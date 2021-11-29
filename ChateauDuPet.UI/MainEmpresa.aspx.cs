using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.BLL;
using ChateauDuPet.DTO;

namespace ChateauDuPet.UI
{
    public partial class MainEmpre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Sessao.IdEmpresa == 0)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                FiltroProfissional();
            }
        }

        public void FiltroProfissional()
        {
            ProfissionalBLL objProPefil = new ProfissionalBLL();

            ProfissionalDTO profissionalDTO = new ProfissionalDTO();
            rptPro.DataSource = objProPefil.FiltarP();
            rptPro.DataBind(); 

        }
    }
}