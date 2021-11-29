﻿<%@ Page Title="" Language="C#" MasterPageFile="~/DefultEmpresa.Master" AutoEventWireup="true" CodeBehind="CadastrarVaga.aspx.cs" Inherits="ChateauDuPet.UI.Empresa.Vagas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    
    <div class="col-md-6">
      <div class="row g-0  rounded overflow-hidden flex-md-row mb-4  h-md-250 position-relative">
       
            <div class="CentroContato container-xxl" style="  width:90%; ">
                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                    <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"></path>
                </svg>
                <span class="menu">
                    <a style="color:black;" id="#Contato">E-mail</a>

                </span>
                <hr />      <br />
        <asp:Label runat="server" Text="Titulo" AssociatedControlID="txtTitulo" CssClass="text-light lead" />
        <asp:TextBox  ID="txtTitulo"  runat="server" CssClass="form-control" MaxLength="100" Width="90%" />
        <asp:RequiredFieldValidator ID="rfvTitulo" runat="server" ControlToValidate="txtTitulo" ErrorMessage="Campo Titulo é obrigatório!" ForeColor="Yellow" />

        <br />
        <asp:Label runat="server" Text="Nivel de Experiancia" AssociatedControlId="txtExperiencia" CssClass="text-light lead" />
        <asp:DropDownList ID="ddllExperiencia" Cssclass="form-control" MaxLength="100" runat="server" Width="90%">
            <asp:ListItem Text="Até 1 Ano" Value="1"/>
            <asp:ListItem Text="Até 5 Anos" Value="2"/>
            <asp:ListItem Text="Mais de 5 Anos "Value="3"/>
        </asp:DropDownList>
        <asp:Label runat="server" Text="Validade da vaga" AssociatedControlId="dllValidade" CssClass="text-light lead" />
        <asp:DropDownList ID="ddllValidade" Cssclass="form-control"  runat="server" Width="90%">
            <asp:ListItem Text="7 dias" Value="1"/>
            <asp:ListItem Text="20 dias" Value="2"/>
            <asp:ListItem Text="30 dias "Value="3"/>
        </asp:DropDownList>

        <br />
        <asp:Label runat="server" Text="Registro" AssociatedControlID="ddllRefgistro" CssClass="text-light lead" /> 
          <asp:DropDownList ID="ddllRegistro" Cssclass="form-control"  runat="server" Width="90%">
            <asp:ListItem Text="CLT " Value="CLT"/>
            <asp:ListItem Text="Freelancer" Value="Freelancer"/>
            <asp:ListItem Text="Temporário"Value="Temporario"/>
            <asp:ListItem Text="PJ" Value="PJ"/>
        </asp:DropDownList>


                
        <asp:Label runat="server" Text="Sexo" AssociatedControlID="ddllSexo" CssClass="text-light lead" /> 
          <asp:DropDownList ID="ddllSexo" Cssclass="form-control"  runat="server" Width="90%">
            <asp:ListItem Text="indifetente" Value="Indiferente"/>
            <asp:ListItem Text="Masculino" Value="Masculino"/>
            <asp:ListItem Text="Feminino" Value="Feminino"/>
        </asp:DropDownList>
        
         <asp:Label runat="server" Text="Mensagem" AssociatedControlID="txtMensagem" CssClass="text-light lead" />
        <asp:TextBox ID="txtMensagem" CssClass="form-control" runat="server" Width="90%" Height="120" TextMode="MultiLine" />
        <asp:RequiredFieldValidator ID="rfvMensagem" runat="server" ControlToValidate="txtMensagem" ErrorMessage="Campo Mensagem é obrigatório" ForeColor="red" />

        <br /><br />
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn btn-secondary" OnClick="BtnCadastrar_Click"/>

        <br /><br />
        <asp:Label ID="lblMensagem" runat="server" CssClass="text-light lead" />

        <br /><br />
        <br /><br />
            </div>
    </div>
  </div>
</asp:Content>
