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
    public partial class EditarEmpresa : System.Web.UI.Page
    {
        EmpresaBLL objempresaBLL = new EmpresaBLL();
        EmpresaDTO objempresaDTO = new EmpresaDTO();

        int idEmpresa = Sessao.IdEmpresa;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (idEmpresa == 0)
            {
                Response.Redirect("~/Login.aspx");
            }
            if (!IsPostBack)
            {

                Selecionar();
            }
        }
        public void Selecionar()
        {
           objempresaDTO = objempresaBLL.SelecionarID(idEmpresa);


            if (objempresaDTO != null)
            {
                imagePro.ImageUrl = objempresaDTO.UrlImage.Replace("~", ".");

                txtNome.Text = objempresaDTO.Recrutador;
                lblCPF.Text = objempresaDTO.CPF;
                txtUser.Text = objempresaDTO.User;
                txtData.Text = objempresaDTO.Nascimento;
                txtTelefone.Text = objempresaDTO.Telefone;
                DDLSexo.Text = objempresaDTO.Sexo;
                txtEndereco.Text = objempresaDTO.Endereco;
                txtNumero.Text = objempresaDTO.NroEndereco;
                txtCEP.Text = objempresaDTO.CEP;
                txtComplemento.Text = objempresaDTO.Complemento;
                dllEstado.Text = objempresaDTO.UF;
                txtBairro.Text = objempresaDTO.Bairro;
                txtCidade.Text = objempresaDTO.Cidade;
                txtCnpj.Text = objempresaDTO.CNPJ;
               txtDataAbertura.Text = objempresaDTO.DataAbertura;
               txtRazaoSocial.Text = objempresaDTO.RazaoSocial;
               txtNomeFantasia.Text = objempresaDTO.NomeFantasia;
                imagePro.ImageUrl = objempresaDTO.UrlImage;
            }
            else
            {
                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro Ao Selecionar Usuario";
            }
        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            string User = txtUser.Text;

            objempresaDTO = objempresaBLL.AutenticaUserBLL(User);
            if (objempresaDTO == null)
            {
                if (idEmpresa != 0)
                {
                    objempresaDTO.Recrutador = txtNome.Text;
                    objempresaDTO.CPF = lblCPF.Text;
                    objempresaDTO.User = txtUser.Text;
                    objempresaDTO.Nascimento = txtData.Text;
                    objempresaDTO.Telefone = txtTelefone.Text;
                    objempresaDTO.Sexo = DDLSexo.Text;
                    objempresaDTO.Endereco = txtEndereco.Text;
                    txtNumero.Text = objempresaDTO.NroEndereco;
                    objempresaDTO.CEP = txtCEP.Text;
                    objempresaDTO.Complemento = txtComplemento.Text;
                    objempresaDTO.UF = dllEstado.Text;
                    objempresaDTO.Bairro = txtBairro.Text;
                    objempresaDTO.Cidade = txtCidade.Text;
                    objempresaDTO.CNPJ = txtCnpj.Text;
                    objempresaDTO.DataAbertura = txtDataAbertura.Text;
                    objempresaDTO.RazaoSocial = txtRazaoSocial.Text;
                    objempresaDTO.NomeFantasia = txtNomeFantasia.Text;
                    if (fUp1.HasFile)
                    {
                        string str = fUp1.FileName;
                        fUp1.PostedFile.SaveAs(Server.MapPath("~/Imagens" + "/" + str));
                        string Caminhoimg = "~/Imagens" + "/" + str.ToString();
                        objempresaDTO.UrlImage = Caminhoimg;
                    }
                    objempresaBLL.EditarEmpresa(objempresaDTO);

                    lblMensagem.Visible = false;
                    lblMensagemCadastrado.Visible = true;
                    lblMensagemCadastrado.Text = "Editado com Sucesso!";
                }

                else
                {
                    lblMensagemCadastrado.Visible = false;
                    lblMensagem.Visible = true;
                    lblMensagem.Text = "Erro ao Editar!";
                }
            }
            else
            {
                lblMensagemCadastrado.Visible = false;
                lblMensagem.Visible = true;
                lblMensagem.Text = "Usuario ao já está em uso!";
            }
        }
    }
}