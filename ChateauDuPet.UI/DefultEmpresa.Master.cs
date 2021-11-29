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
    public partial class DefultEmpresa : System.Web.UI.MasterPage
    {

        EmpresaBLL SelecionaBLL = new EmpresaBLL();
        EmpresaDTO SelecinaDTO = new EmpresaDTO();
        int idEmpresa = Sessao.IdEmpresa;
        string EmailProfissional = Sessao.EmailUser;

        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (Sessao.IdEmpresa != 0)
            {

                Response.Redirect("Login.aspx");
            }

        }  

        protected void Sair_Click(object sender, EventArgs e)
        {
           if (Sessao.IdEmpresa > 0)
            {

                Sessao.IdEmpresa = 0;
                Sessao.EmailUser = null;
                Response.Redirect("Login.aspx");
            }
        }
    }
}