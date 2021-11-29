using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.DTO;
using ChateauDuPet.BLL;
namespace ChateauDuPet.UI
{
    public partial class DefultProfissional : System.Web.UI.MasterPage
    {
 

        protected void Page_Load(object sender, EventArgs e)
        {

          ProfissionalBLL objProPefil = new ProfissionalBLL();
          ProfissionalDTO profissionalDTO = new ProfissionalDTO();
            //rptPro.DataSource = objProPefil.FiltarP();

            int idProfissional = Sessao.IdProfissional;
            string EmailProfissional = Sessao.EmailUser;

            if (Sessao.IdProfissional == 0)
            {
                Response.Redirect("Login.aspx");
            }


        }

        protected void Sair_Click(object sender, EventArgs e)
        {
            if (Sessao.IdProfissional > 0 )
            {
                Sessao.IdProfissional = 0;
                Sessao.EmailUser = null;
                Response.Redirect("Login.aspx");
            }

        }

    }
}