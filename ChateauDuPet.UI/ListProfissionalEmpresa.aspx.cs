using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.BLL;
using ChateauDuPet.DTO;

namespace ChateauDuPet.UI.Empresa
{
    public partial class ListProfissional : System.Web.UI.Page
    {
        ProfissionalBLL objProPefil = new ProfissionalBLL();

        ProfissionalDTO profissionalDTO = new ProfissionalDTO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void List()
        {
            rptPro.DataSource = objProPefil.FiltarP();
            rptPro.DataBind();
        }
    }
}