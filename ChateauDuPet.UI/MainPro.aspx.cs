﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.BLL;
using ChateauDuPet.DTO;


namespace ChateauDuPet.UI
{
    public partial class MainPro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Sessao.IdProfissional == 0)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                FiltroVaga();
                FiltroProfissional();
            }
        }


        public void FiltroVaga() {
            VagaBLL objVagaBLL = new VagaBLL();

            VagaDTO objDTO = new VagaDTO();

            rptVaga1.DataSource = objVagaBLL.FiltrarVaga();
            rptVaga1.DataBind();

        }

        public void FiltroProfissional()
        {
            //ProfissionalBLL objProPefil = new ProfissionalBLL();
            //ProfissionalDTO profissionalDTO = new ProfissionalDTO();
            //rptPro.DataSource = objProPefil.FiltarP();
            //rptPro.DataBind();
        }

        protected void rptPro_CreatingModelDataSource(object sender, CreatingModelDataSourceEventArgs e)
        {

        }
    }
}