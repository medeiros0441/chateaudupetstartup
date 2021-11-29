using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.DTO;
using ChateauDuPet.BLL;


namespace ChateauDuPet.UI.MainEmpresa
{
    public partial class Perfil_Empresa : System.Web.UI.Page
    {
        VagaDTO objCerDTO = new VagaDTO();
        VagaBLL objCerBLL = new VagaBLL();
        EmpresaBLL SelecionaBLL = new EmpresaBLL();
        EmpresaDTO SelecinaDTO = new EmpresaDTO();

        int idEmpresa = Sessao.IdEmpresa;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (idEmpresa == 0)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                Seleciona();
            }
        }

        public void Seleciona()
        {

            if (idEmpresa != 0)
            {
                rptPerfil.DataSource = SelecionaBLL.FiltrarID(idEmpresa);
                rptPerfil.DataBind();

            }
        }
    }
}