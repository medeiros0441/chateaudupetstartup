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
    public partial class Sobre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            //monta o conteúdo da mensagem ( DTO )
            EmailDTO objDTO = new EmailDTO();

            objDTO.NomeRemetente = txtNome.Text;
            objDTO.EmailRemetente = txtEmail.Text;
            objDTO.NomeDestinatario = "CHATEAUDUPET";
            objDTO.EmailDestinatario = "medeiros0442@gmail.com";
            objDTO.Assunto = "Contato via Site";
            objDTO.Mensagem = txtMensagem.Text + " - NOME: " + txtNome.Text + " - FONE: " + txtTelefone.Text;

            //instanciar a classe envia email (BLL)
            EmailBLL objEmail = new EmailBLL();

            try
            {
                objEmail.Enviar(objDTO);
                lblMensagem.Visible = true;

                lblMensagem.Text = "E-mail enviado com Sucesso!";

                txtEmail.Text = "";
                txtTelefone.Text = "";
                txtMensagem.Text = "";
            }
            catch
            {
                 lblMensagemErro.Visible = true;
                lblMensagemErro.Text = "Tente novamente mais tarde!";
            }
        }
    }
}