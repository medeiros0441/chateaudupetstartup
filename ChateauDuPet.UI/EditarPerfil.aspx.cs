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
    public partial class EditarPerfil : System.Web.UI.Page
    {
        ProfissionalDTO objDTO = new ProfissionalDTO();

        ProfissionalBLL objCad = new ProfissionalBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Sessao.IdProfissional == 0)
            {
                Response.Redirect("~/Login.aspx");
            }
            if (!IsPostBack)
            {

                Seleciona();
            }

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Perfil-Profissional.aspx");
        }

        protected void BtnSalvar_Click(object sender, EventArgs e)
        {
            string User = txtUser.Text;

            int IDProfissional = Sessao.IdProfissional;

            objDTO = objCad.SelecionarPro(IDProfissional);
            if (objDTO.User == txtUser.Text)
            {
                if (Sessao.IdProfissional != 0)
                {
                    objDTO.Nome = txtNome.Text;
                    objDTO.CPF = lblCPF.Text;
                    objDTO.Email = txtEmail.Text;
                    objDTO.Telefone = txtTelefone.Text;
                    objDTO.Nascimento = txtData.Text;
                    objDTO.Sexo = DDLSexo.Text;
                    objDTO.User = txtUser.Text;
                    objDTO.Biografia = txtBiografia.Text;
                    objDTO.FormacaoEscolar = txtFormacaoEscolar.Text;

                    objDTO.Endereco = Endereco.Text;
                    objDTO.NroEndereco = txtNumero.Text;
                    objDTO.Complemento = txtComplemento.Text;
                    objDTO.CEP = txtCEP.Text;
                    objDTO.Bairro = txtBairro.Text;
                    objDTO.Cidade = txtCidade.Text;
                    objDTO.UF = dllEstado.Text;
                    objDTO.IdProfissional = Sessao.IdProfissional;
                    if (fUp1.HasFile)
                    {
                        string str = fUp1.FileName;
                        fUp1.PostedFile.SaveAs(Server.MapPath("~/Imagens" + "/" + str));
                        string Caminhoimg = "~/Imagens" + "/" + str.ToString();
                        objDTO.UrlImage = Caminhoimg;
                    }
                    objCad.EditarPro(objDTO);


                    lblMensagem.Visible = false;

                    lblMensagemCadastrado.Visible = true;
                    lblMensagemCadastrado.Text = "Editado com sucesso!";
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
                objDTO = objCad.AutenticaUserBLL(User);
                if (objDTO.User == null)
                {


                    if (Sessao.IdProfissional != 0)
                    {
                        objDTO.Nome = txtNome.Text;
                        objDTO.CPF = lblCPF.Text;
                        objDTO.Email = txtEmail.Text;
                        objDTO.Telefone = txtTelefone.Text;
                        objDTO.Nascimento = txtData.Text;
                        objDTO.Sexo = DDLSexo.Text;
                        objDTO.User = txtUser.Text;
                        objDTO.Biografia = txtBiografia.Text;
                        objDTO.FormacaoEscolar = txtFormacaoEscolar.Text;

                        objDTO.Endereco = Endereco.Text;
                        objDTO.NroEndereco = txtNumero.Text;
                        objDTO.Complemento = txtComplemento.Text;
                        objDTO.CEP = txtCEP.Text;
                        objDTO.Bairro = txtBairro.Text;
                        objDTO.Cidade = txtCidade.Text;
                        objDTO.UF = dllEstado.Text;
                        objDTO.IdProfissional = Sessao.IdProfissional;
                        if (fUp1.HasFile)
                        {
                            string str = fUp1.FileName;
                            fUp1.PostedFile.SaveAs(Server.MapPath("~/Imagens" + "/" + str));
                            string Caminhoimg = "~/Imagens" + "/" + str.ToString();
                            objDTO.UrlImage = Caminhoimg;
                        }
                        objCad.EditarPro(objDTO);


                        lblMensagem.Visible = false;

                        lblMensagemCadastrado.Visible = true;
                        lblMensagemCadastrado.Text = "Editado com sucesso!";
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

        public void Seleciona()
        {
            int IDProfissional = Sessao.IdProfissional;

            objDTO = objCad.SelecionarPro(IDProfissional);

            if (objDTO != null)
            {
                imagePro.ImageUrl = objDTO.UrlImage.Replace("~", ".");
               
                txtNome.Text = objDTO.Nome;
                lblCPF.Text = objDTO.CPF;
                txtEmail.Text = objDTO.Email;
                txtTelefone.Text = objDTO.Telefone;
                txtData.Text = objDTO.Nascimento;
                DDLSexo.Text = objDTO.Sexo;
                txtUser.Text = objDTO.User;
                txtBiografia.Text = objDTO.Biografia;

                Endereco.Text = objDTO.Endereco;
                txtNumero.Text = objDTO.NroEndereco;
                txtComplemento.Text = objDTO.Complemento;
                txtCEP.Text = objDTO.CEP;
                txtBairro.Text = objDTO.Bairro;
                txtCidade.Text = objDTO.Cidade;
                dllEstado.Text = objDTO.UF;
               // imagePro.ImageUrl = objDTO.UrlImage;
            }
            else
            {
                lblMensagem.Visible = true;
                lblMensagem.Text = "Erro Ao Selecionar Usuario";
            }
        } 
    }
}