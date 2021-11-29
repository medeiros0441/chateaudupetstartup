<%@ Page Title="" Language="C#" MasterPageFile="~/Defult.Master" AutoEventWireup="true" CodeBehind="Sobre.aspx.cs" Inherits="ChateauDuPet.UI.Sobre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
        <main class="Centro container-xxl " style="   margin: auto;">
                 
            <div class="row ">
    <div class="col-md-6 order-sm-2   ">
        
                        <label class="menu ms-2  order-1" ><a class="" style="font-size:15pt;">Nossa Missão</a></label>

  <p class=" ms-2 order-1  pt-1">São milhares de profissionais e empresas que estão nos acompanhando em nossas redes sócias e poder fazer a  conexão de profissionais e empresas de forma fácil e simples  é a nossa missão</p>
        <div class="clearfix">
             <div data-slide="slide"  class="col-md-6 float-md-end mb-3 ms-md-3 slide " >
    <div class="slide-items">
      <img src="Imagens/129772938_215161546921839_5037001894224364868_n.jpg"  alt="Img 1">
      <img src="Imagens/1624081833559.jpg"  alt="Img 2">
      <img src="Imagens/128666347_205219744391792_5418118901415771532_n.jpg"  alt="Img 3">
      <img src="Imagens/1624082007356.jpg"  alt="Img 4">
      <img src="Imagens/128963267_778769509337704_1323982335359367752_n.jpg" alt="Img 5">
      <img src="Imagens/1624081878901.jpg" alt="Img 6">
    </div>
    <nav class="slide-nav">
      <div class="slide-thumb"></div> 
    </nav>
  </div>  
                        <label class="menu ms-2" ><a class="" style="font-size:15pt;">Sobre-nós</a></label>
           

  <p class="ms-2   pt-1">Somos apaixonados por animais. E essa paixão nos despertou o desejo de ter um espaço exclusivo para que animais de estimação pudessem, junto com seus tutores, vivenciar momentos de lazer e cuidados, algo que fosse além do banho e tosa e consultas veterinárias. E assim, surgiu o Chateau du Pet. Um espaço exclusivo, com day care, hotel, boutique para pet, consultório veterinário, banho e tosa, recreação aquática para pet e um café para tutores.</p>

  <p class="ms-2  pt-1">Inaugurado em outubro de 2020 já recebemos visitas ilustres e nossos clientes, pets e tutores, são apaixonados pelo Chateau du Pet. Cada cantinho foi pensando e preparado com muita atenção, por profissionais que entendem de comportamento animal e com isso o Chateau du Pet tornou-se um local único e surpreendente. Temos certeza que aqui é lugar de pet de feliz! </p><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo-fill" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z" />
                                </svg>
                                <label class=" col-sm-4 mnA ms-auto"><a class="menu" style="font-size: 10pt;color:black; text-decoration:none; " href="https://www.chateaudupet.com.br">Visite nosso PET-SHOP!</a></label>
            <Br />
</div>
       
  </div>


    <div class="col-md-6 order-sm-1">
            <Br />

      <div class="row g-0  rounded overflow-hidden flex-md-row mb-4  h-md-250 position-relative">
       
            <div class="CentroContato container-xxl" style="  width:90%; ">
             <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
  <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
</svg>
                <label class="menu">
                    <a style="color:black;" class=" card-title" id="#Contato">E-mail</a>

                </label>
                <hr />      <br />
                 
        <asp:Label runat="server" Text="Nome" AssociatedControlID="txtNome" CssClass="form-label" />
             <asp:TextBox runat="server" ID="txtNome" Width="90%" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" ErrorMessage="Campo Nome é obrigatório!" ForeColor="red" />

        <br />
        <asp:Label runat="server" Text="E-mail" AssociatedControlId="txtEmail" CssClass="form-label" />
        <asp:TextBox ID="txtEmail" Cssclass="form-control" MaxLength="100" runat="server" Width="90%" />
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Campo E-mail é obrigatório" ForeColor="red" />
        <asp:RegularExpressionValidator ID="gevEmailValido" runat="server" ControlToValidate="txtEmail" 
            ErrorMessage="O E-mail é inválido!" ForeColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

        <br />
        <asp:Label runat="server" Text="Telefone" AssociatedControlID="txtTelefone" CssClass="form-label" />
        <asp:TextBox ID="txtTelefone" Cssclass="form-control phone" MaxLength="15" runat="server" Width="90%" />
        <asp:RequiredFieldValidator ID="rfvTelefone" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Campo Telefone é obrigatório" ForeColor="red" />

        <br />
        <asp:Label runat="server" Text="Mensagem" AssociatedControlID="txtMensagem" CssClass="form-label" />
        <asp:TextBox ID="txtMensagem" CssClass="form-control" runat="server" Width="90%"  Height="120px" MaxLength="1000" TextMode="MultiLine" />
        <asp:RequiredFieldValidator ID="rfvMensagem" runat="server" ControlToValidate="txtMensagem" ErrorMessage="Campo Mensagem é obrigatório" ForeColor="red" />

        <br /><br />
        <asp:Button ID="BtnEnviar" runat="server" Text="Enviar"  CssClass="btn btn-danger "   OnClick="BtnEnviar_Click" />
        <asp:Label  ID="lblMensagem" runat="server" Visible="False" CssClass="  col-md-5  ms-3 alert alert-success" />

        <asp:Label ID="lblMensagemErro" runat="server" Visible="False" CssClass="  col-md-5  ms-3 alert alert-danger" />
        <br /><br />
        <br /><br />
            </div>
    </div>
  </div>
  </div>
                 
            </main>

             
</asp:Content>
