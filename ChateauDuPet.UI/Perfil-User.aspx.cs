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
    public partial class Perfil_User : System.Web.UI.Page
    {
        CertificadoDTO objCerDTO = new CertificadoDTO();
        CertificadoBLL objCerBLL = new CertificadoBLL();
        ProfissionalBLL SelecionaBLL = new ProfissionalBLL();
        ProfissionalDTO SelecinaDTO = new ProfissionalDTO();

        ExperienciaDTO objExpDTO = new ExperienciaDTO();
        ExperienciaBLL objExpBLL = new ExperienciaBLL();
           

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Sessao.IdProfissional == 0)
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

        protected void image1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Cadastrar_Click(object sender, EventArgs e)
        {

        }
    }
}