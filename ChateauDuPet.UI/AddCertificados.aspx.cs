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
    public partial class AddCertificados : System.Web.UI.Page
    {

        CertificadoBLL objCerBLL = new CertificadoBLL();
        CertificadoDTO objCerDTO = new CertificadoDTO();

        int IdProfissional = Sessao.IdProfissional;
        string Email = Sessao.EmailUser;
      

        protected void Page_Load(object sender, EventArgs e)
        {

            if (IdProfissional == 0)
            {
                Response.Redirect("Login.aspx");
            }

            int idcertificado = Convert.ToInt32(Request.QueryString["id"]);

            if (idcertificado != 0)
            {
                PlEditar.Visible = true;
                if (!IsPostBack)
                {
                  SelecionaCertificado();

                }
            }else
            {
                PlCadastrar.Visible = true;
            }


        }
        public void SelecionaCertificado()
        {
            int idcertificado = Convert.ToInt32(Request.QueryString["id"]);

            objCerDTO = objCerBLL.SelecionarCertificadoID(IdProfissional, idcertificado);

            if (objCerDTO != null)
            {
                txtCurso.Text = objCerDTO.Curso;
                txtInstituiçao.Text = objCerDTO.Instituicao;
                txtDataInicio.Text = objCerDTO.DataInicio;
                txtDataFinal.Text = objCerDTO.DataConclusao;
                txtDescricaoCurso.Text = objCerDTO.DataInicio;
                
                lblMensagem.Visible = false; 
            }
            else
            {
                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro! ao Selecionar Certificado!";

            }

        }

        protected void Cadastrar_Click(object sender, EventArgs e)
        {
            if (IdProfissional != 0)
            {
                objCerDTO.Curso = txtCurso.Text;
                objCerDTO.Instituicao = txtInstituiçao.Text;
                objCerDTO.DataInicio = txtDataInicio.Text;
                objCerDTO.DataConclusao = txtDataFinal.Text;
                objCerDTO.Descricao = txtDescricaoCurso.Text;
                objCerDTO.FKProfissional = IdProfissional;

                objCerBLL.CadastrarCertificado(objCerDTO);
                lblMensagemCadastrado.Visible = true;
                lblMensagemCadastrado.Text = "Certificado cadastrado com Sucesso!";
                Limpar();
            }
            else
            {
                lblMensagem.Visible = true;

                lblMensagem.Text = "Erro! ao cadastrar Certificado!";
            }
        }

        public void Limpar(){

            txtCurso.Text = 
            txtInstituiçao.Text =  
            txtDataInicio.Text =
            txtDataFinal.Text =  
            txtDataFinal.Text =  
            txtDescricaoCurso.Text =  string.Empty;
            txtCurso.Focus(); 

        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpar();

        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {

            int idcertificado = Convert.ToInt32(Request.QueryString["id"]);

            if (idcertificado != 0)
            {
                objCerDTO.Curso = txtCurso.Text;
                objCerDTO.Instituicao = txtInstituiçao.Text;
                objCerDTO.DataInicio = txtDataInicio.Text;
                objCerDTO.DataConclusao = txtDataFinal.Text;
                objCerDTO.Descricao = txtDescricaoCurso.Text;
                objCerDTO.FKProfissional = IdProfissional;
                objCerDTO.IdCertificado = idcertificado;
                objCerBLL.EditarCertificado(objCerDTO);

                lblMensagem.Visible = false;
                lblMensagemCadastrado.Visible = true;
                lblMensagemCadastrado.Text = "Certificado Editado com Sucesso!";
            }
            else
            {
                lblMensagemCadastrado.Visible = false;

                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro ao Editar!"; 
            }
        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {

            int idcertificado = Convert.ToInt32(Request.QueryString["id"]);
                if (idcertificado != 0)
            {
                objCerBLL.ExcluirCertificado(idcertificado);
                Limpar();
                lblMensagem.Visible = false;
                lblMensagemCadastrado.Visible = true;
                lblMensagemCadastrado.Text = "Certificado Excluido com Sucesso!";
            }
            else
            {
                lblMensagem.Visible = true;

                lblMensagem.Text = "Erro Ao Excluir!";
            }
        }
    }
}