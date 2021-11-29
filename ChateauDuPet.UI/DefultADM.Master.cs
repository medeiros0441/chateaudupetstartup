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
    public partial class DefultADM : System.Web.UI.MasterPage
    {
         
        

        protected void Page_Load(object sender, EventArgs e)
        { 

            if (Sessao.IdAdministrativo != 0)
            {
                Response.Redirect("~/Login.aspx");
            }



        }

        protected void Sair_Click(object sender, EventArgs e)
        {
            if (Sessao.IdAdministrativo != 0)
            {
                Sessao.IdAdministrativo = 0;
                Sessao.EmailUser = null;
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}