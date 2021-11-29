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
    public partial class Criar_Vagas : System.Web.UI.Page
    {
        VagaBLL objVagaBLL = new VagaBLL();
        VagaDTO objvagaDTO = new VagaDTO();
        EmpresaBLL objEmpresaBLL = new EmpresaBLL();
        EmpresaDTO objEmpresaDTO = new EmpresaDTO();

        int idEmpresa = Sessao.IdEmpresa;
        string Email = Sessao.EmailUser;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Sessao.IdEmpresa == 0)
            {

                Response.Redirect("Login.aspx");

            }
            int idvaga = Convert.ToInt32(Request.QueryString["id"]);
            if (idvaga != 0)
            {
                PlEditar.Visible = true;
                if (!IsPostBack)
                {

                    Selecionar();
                } 
            }else 
            {
                PlCadastrar.Visible = true;
            }
        }
        public void Selecionar()
        {
            int idvaga = Convert.ToInt32(Request.QueryString["id"]);
            objvagaDTO = objVagaBLL.SelecionarVaga(idvaga);

            if (idvaga != 0)
            {
                txtTitulo.Text = objvagaDTO.Vaga;
                DLLExperiencia.Text = objvagaDTO.Experiencia;
                ddlResgistro.Text = objvagaDTO.Registro;
                DllSexo.Text = objvagaDTO.Sexo;
                DllValidade.Text = objvagaDTO.Validade;
            }else
            {
                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro Ao Selecionar";
            }
                

        }
        public void Limpar()
        {
            txtTitulo.Text =
            DLLExperiencia.Text =
            ddlResgistro.Text =
            DllSexo.Text =
            DllValidade.Text = string.Empty;

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        protected void Cadastrar_Click(object sender, EventArgs e)
        {
            
            if (idEmpresa != 0) 
            {
                objvagaDTO.Vaga = txtTitulo.Text;
                objvagaDTO.Experiencia = DLLExperiencia.Text;
                objvagaDTO.Registro = ddlResgistro.Text;
                objvagaDTO.Sexo = DllSexo.Text;
                objvagaDTO.DataPublicacao = DateTime.Now;
                objvagaDTO.Validade = DllValidade.Text;
                objvagaDTO.Descricao = txtDescricao.Text;
                objvagaDTO.FKEmpresa = idEmpresa;
                objVagaBLL.CadastrarVaga(objvagaDTO);


                lblMensagemCadastrado.Visible = true;
                lblMensagemCadastrado.Text = "Cadastradp com Sucesso!";
            } else
            {
                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro ao Cadastrar";
            }

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {

            if (idEmpresa != 0)
            {
                objvagaDTO.Vaga = txtTitulo.Text;
                objvagaDTO.Experiencia = DLLExperiencia.Text;
                objvagaDTO.Registro = ddlResgistro.Text;
                objvagaDTO.Sexo = DllSexo.Text;
                objvagaDTO.Validade = DllValidade.Text;
                objVagaBLL.EditarVaga(objvagaDTO);
                lblMensagemCadastrado.Visible = true;
                lblMensagemCadastrado.Text = "Editado com Sucesso!";
            }
            else
            {
                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro ao Editar";
            }
        }
    }
}