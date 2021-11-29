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
    public partial class PerfilPro : System.Web.UI.Page
    {

        CertificadoDTO objCerDTO = new CertificadoDTO();
        CertificadoBLL objCerBLL = new CertificadoBLL();

        ProfissionalBLL SelecionaBLL = new ProfissionalBLL();
        ProfissionalDTO SelecinaDTO = new ProfissionalDTO();

        ExperienciaDTO objExpDTO = new ExperienciaDTO();
        ExperienciaBLL objExpBLL = new ExperienciaBLL();

        int idEmpresa = Sessao.IdEmpresa;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (idEmpresa == 0)
            {
                Response.Redirect("Login.aspx");
            }
            if
             (!IsPostBack)
            {
                Seleciona();
            }


        }
        public void Seleciona()
        {
            int idProfissional = Convert.ToInt32(Request.QueryString["id"]);

            rptPerfil.DataSource = SelecionaBLL.FiltrarID(idProfissional);
            rptPerfil.DataBind();

            rptEndereco.DataSource = SelecionaBLL.FiltrarID(idProfissional);
            rptEndereco.DataBind();

            rptCurso.DataSource = objCerBLL.FiltroCerID(idProfissional);
            rptCurso.DataBind();

            rptExperiencia.DataSource = objExpBLL.FiltroExpID(idProfissional);
            rptExperiencia.DataBind();


        }
    
    }
}