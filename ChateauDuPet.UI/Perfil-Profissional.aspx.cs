using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.DTO;
using ChateauDuPet.BLL;

namespace ChateauDuPet.UI.MainProfissional
{
    public partial class Perfil_Profissional : System.Web.UI.Page
    {

        CertificadoDTO objCerDTO = new CertificadoDTO();
        CertificadoBLL objCerBLL = new CertificadoBLL();

        ProfissionalBLL SelecionaBLL = new ProfissionalBLL();
        ProfissionalDTO SelecinaDTO = new ProfissionalDTO();

        ExperienciaDTO objExpDTO = new ExperienciaDTO();
        ExperienciaBLL objExpBLL = new ExperienciaBLL();

        string EmailProfissional = Sessao.EmailUser;

        int idProfissional = Sessao.IdProfissional;

        protected void Page_Load(object sender, EventArgs e)
        { 
            if (idProfissional == 0)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                SelecionarProfissional();
                SelecionarExperiencia();
                SelecionarCertificado();
            }
             
        }

        public void SelecionarProfissional()
        {

            rptPerfil.DataSource = SelecionaBLL.FiltrarID(idProfissional);
            rptPerfil.DataBind();
            rptEndereco.DataSource = SelecionaBLL.FiltrarID(idProfissional);
            rptEndereco.DataBind();

        }
        public void SelecionarCertificado()
        {
            rptCurso.DataSource = objCerBLL.FiltroCerID(idProfissional); 
            rptCurso.DataBind();
        }
        public void SelecionarExperiencia()
        {            
            rptExperiencia.DataSource = objExpBLL.FiltroExpID(idProfissional);
            rptExperiencia.DataBind();
        }
        protected void btnEditar_Click(object sender, EventArgs e)
        {

            Response.Redirect("EditarPerfil.aspx");

        }
    }
}