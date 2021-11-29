using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.BLL;
using ChateauDuPet.DTO;

namespace ChateauDuPet.UI.Profissional
{
    public partial class Vagas_cadastradas : System.Web.UI.Page
    {
        CandidatosBLL objCandidatoBLL = new CandidatosBLL();
        CandidatosDTO objCendidatoDTO = new CandidatosDTO();

        VagaBLL objVagaBLL = new VagaBLL();
        VagaDTO objDTO = new VagaDTO();
        string EmailProfissional = Sessao.EmailUser;
        int idProfissional = Sessao.IdProfissional;

        protected void Page_Load(object sender, EventArgs e)
        { 
            if (Sessao.IdProfissional == 0)
            {
                Response.Redirect("~/Index.aspx");
            }
            if (!IsPostBack)
            {
                SelecionaVaga();
            }
        }

        public void SelecionaVaga()
        {
              int IDVaga = Convert.ToInt32(Request.QueryString["id"]);
           // if (IDVaga != 0)
           // {


                rptVaga.DataSource = objCandidatoBLL.FiltrarVaga();
                rptVaga.DataBind();
           // } 
        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            int Candidato = Convert.ToInt32(Request.QueryString["id"]);

            objCandidatoBLL.ExcluirCandidatura(Candidato, idProfissional);
        }
    }
}