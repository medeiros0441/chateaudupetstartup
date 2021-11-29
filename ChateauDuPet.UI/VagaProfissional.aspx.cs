using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.BLL;
using ChateauDuPet.DTO;

namespace ChateauDuPet.UI.MainProfissional
{
    public partial class VagaProfissional : System.Web.UI.Page
    {
        CandidatosDTO objCanditatoDTO = new CandidatosDTO();
        CandidatosBLL objCanditatoBLL = new CandidatosBLL();

        VagaBLL objVagaBLL = new VagaBLL();
        VagaDTO objvagaDTO = new VagaDTO();

        ProfissionalBLL SelecionaBLL = new ProfissionalBLL();
        ProfissionalDTO SelecinaDTO = new ProfissionalDTO();


        string EmailProfissional = Sessao.EmailUser;

        int idProfissional = Sessao.IdProfissional;

        protected void Page_Load(object sender, EventArgs e)
        {

            int Idvaga = Convert.ToInt32(Request.QueryString["id"]);

            if (!IsPostBack)
            {
                FiltroVaga();
                Profissional();
            }

        }
        public void Profissional()
        {
            int Idvaga = Convert.ToInt32(Request.QueryString["id"]);
            objCanditatoDTO = objCanditatoBLL.AutenticandoVeP(Idvaga, idProfissional);
            
            if (objCanditatoDTO != null )
            {
                 PlEditar.Visible = true;

            }
            else
            {
                PlCadastrar.Visible = true;
            }
        }

        public void FiltroVaga()
        {

            int Idvaga = Convert.ToInt32(Request.QueryString["id"]);
            rptVagaCadstro.DataSource = objVagaBLL.FiltrarVagaID(Idvaga);
            rptVagaCadstro.DataBind();

          
        }

        protected void Cadastrar_Click(object sender, EventArgs e)
        {
            int Idvaga = Convert.ToInt32(Request.QueryString["id"]);
            objvagaDTO = objVagaBLL.SelecionarVaga(Idvaga);


            objCanditatoDTO = objCanditatoBLL.AutenticandoVeP(Idvaga, idProfissional);


            if (objCanditatoDTO != null)
            {

                if (Idvaga != 0)
                {
                    objvagaDTO = objVagaBLL.SelecionarVaga(Idvaga);
                    var DataAtuaL = DateTime.Now;
                    objCanditatoDTO.IdVaga = Idvaga;
                    objCanditatoDTO.Idprofissional = idProfissional;
                    objCanditatoDTO.IdEmpresa = objvagaDTO.FKEmpresa;
                    objCanditatoDTO.DataInscrição = DataAtuaL.ToShortDateString();
                    objCanditatoBLL.CadastrarPRoVaga(objCanditatoDTO);
                    lblMensagemCadastrado.Visible = true;
                    lblMensagemCadastrado.Text = "Cadastrado com Sucesso!";
                }
                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro ao se cadastrar na vaga.!";
            }
            else
            {
                lblMensagem.Visible = true;

                lblMensagem.Text = "você já esta cadastrado nessa vaga.";
            }

        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {


            if (objCanditatoDTO != null)
            {
                int Idvaga = Convert.ToInt32(Request.QueryString["id"]);
                objvagaDTO = objVagaBLL.SelecionarVaga(Idvaga);
                objCanditatoDTO = objCanditatoBLL.AutenticandoVeP(Idvaga, idProfissional);


                if (Idvaga != 0)
                {
                    objCanditatoBLL.ExcluirCandidatura(Idvaga, idProfissional);
                    lblMensagemCadastrado.Visible = true;
                    lblMensagemCadastrado.Text = "Descadas com Sucesso!";

                }
                else
                {
                    lblMensagem.Visible = true;
                    lblMensagem.Text = "Erro ao se cadastrar na vaga.!";
                }
            }
            else
            {
                lblMensagem.Visible = true;

                lblMensagem.Text = "você já esta cadastrado nessa vaga.";
            }
        }
    }
}
