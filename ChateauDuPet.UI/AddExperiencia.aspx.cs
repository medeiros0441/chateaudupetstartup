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
    public partial class AddExperiência : System.Web.UI.Page
    {

        ExperienciaBLL objExpBLL = new ExperienciaBLL();
        ExperienciaDTO objExpDTO = new ExperienciaDTO();
        int IdProfissional = Sessao.IdProfissional;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Sessao.IdProfissional == 0)
            {
                Response.Redirect("Login.aspx");
            }

            int IdExperiencia = Convert.ToInt32(Request.QueryString["id"]);
            if (IdExperiencia != 0)
            {
                if (!IsPostBack)
                {
                    PlEditar.Visible = true;
                    Seleciona();
                }
            }
            else
            {
                PlCadastrar.Visible = true;
            }
            
        }
        public void Seleciona()
        {

            int IdExperiencia = Convert.ToInt32(Request.QueryString["id"]);
           objExpDTO = objExpBLL.SelecionaExperienciaID(IdProfissional, IdExperiencia);
            if (objExpDTO != null) 
            {        
                txtCargo.Text = objExpDTO.Cargo;
                txtEmpresa.Text = objExpDTO.Empresa;
                ddlTipoCa.Text = objExpDTO.TipoContrato;
                txtDataInicio.Text = objExpDTO.DataInicio;
                txtDataFinal.Text = objExpDTO.DataFinal;
                txtDescricao.Text = objExpDTO.dsdescricao;
                objExpDTO.FKProfissional = Convert.ToInt32(IdProfissional);
                objExpDTO.IdExperiencia = Convert.ToInt32(IdExperiencia);
            }
            else
            {
                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro! ao Selecionar Experiencia!";

            }
        }

        protected void Cadastrar_Click(object sender, EventArgs e)
        {
            if (IdProfissional != 0)
            {
                objExpDTO.Cargo = txtCargo.Text;
                objExpDTO.Empresa = txtEmpresa.Text;
                objExpDTO.dsdescricao = txtDescricao.Text;
                objExpDTO.DataInicio = txtDataInicio.Text;
                objExpDTO.DataFinal = txtDataFinal.Text;
                objExpDTO.TipoContrato = ddlTipoCa.Text;
                objExpDTO.FKProfissional = IdProfissional;

                objExpBLL.CadastrarExperiencia(objExpDTO);
                lblMensagemCadastrado.Visible = true;
                lblMensagemCadastrado.Text = "Expêrincia cadastrado com Sucesso!";
            }
            else
            {
                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro! ao cadastrar Certificado!";
            }

        }

        public void limpar()
        {
            txtCargo.Text =
            txtEmpresa.Text =
            txtDescricao.Text =
            txtDataInicio.Text =
            txtDataFinal.Text =
            ddlTipoCa.Text = string.Empty;
        }

        public void CachandoTxt()
        {
            txtCargo.Text = null;
            txtEmpresa.Text = null;
            txtDescricao.Text = null;
            txtDataInicio.Text = null;
            txtDataFinal.Text = null;
            ddlTipoCa.Text = null;
        }
        

           

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            limpar();

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {

            int IdExperiencia = Convert.ToInt32(Request.QueryString["id"]);

            if (IdProfissional != 0)
            {
                objExpDTO.Cargo = txtCargo.Text;
                objExpDTO.Empresa = txtEmpresa.Text;
                objExpDTO.dsdescricao = txtDescricao.Text;
                objExpDTO.DataInicio = txtDataInicio.Text;
                objExpDTO.DataFinal = txtDataFinal.Text;
                objExpDTO.TipoContrato = ddlTipoCa.SelectedValue;
                objExpDTO.FKProfissional = Convert.ToInt32(IdProfissional);
                objExpDTO.IdExperiencia = Convert.ToInt32(IdExperiencia);
                objExpBLL.EditarExperiencia(objExpDTO);
               
                lblMensagem.Visible = false;
                lblMensagemCadastrado.Visible = true;
                lblMensagemCadastrado.Text = "Editado com Sucesso!";
            }
            else
            {
                lblMensagemCadastrado.Visible = false;
                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro! ao cadastrar Certificado!";
            }
}

        protected void btnExcluir_Click(object sender, EventArgs e)
        {


            int IdExperiencia = Convert.ToInt32(Request.QueryString["id"]);
            if (IdExperiencia != 0 ) {

                objExpBLL.ExcluirExperiencia( IdProfissional, IdExperiencia);
                limpar();
                lblMensagem.Visible = false;
                lblMensagemCadastrado.Visible = true;
                lblMensagemCadastrado.Text = "Excluido com Sucesso!";
            }else
            {
                lblMensagemCadastrado.Visible = false;

                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro ao Excluir!";

            }
        }
    }
}