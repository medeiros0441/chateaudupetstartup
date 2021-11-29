<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="VagaProfissional.aspx.cs" Inherits="ChateauDuPet.UI.MainProfissional.VagaProfissional" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
        <asp:Panel  Visible="false" ID="containerVAga"   CssClass=" h2" runat="server">
  
    <br /><br />
    <asp:Repeater runat="server" ID="rptVagaCadstro"> 
        <ItemTemplate>

          <div class="row g-3" tabindex="-1" >

            <div class="col-sm-6">
                <label  class="form-label">Vaga</label>
                <asp:Label runat="server"  CssClass=" form-text" ID="txtVaga"  ><%# DataBinder.Eval(Container.DataItem, "Vaga") %></asp:Label>
            </div>

            <div class="col-sm-6">
                <label class="form-label">Nivél de Experiência </label>
                <asp:Label  runat="server" CssClass="form-text" TabIndex="2" ID="lblExperiencia" ><%# DataBinder.Eval(Container.DataItem, "Experiencia ") %>  </asp:Label>  

            </div>
            <div class="col-sm-4">
                <label class="form-label">Tipo de Registro</label>
                <asp:label runat="server" CssClass=" form-text" TabIndex="3" ID="lblResgistro"  > <%# DataBinder.Eval(Container.DataItem, "Registro") %></asp:label>

            </div>
            <div class=" col-sm-3">
                <label class="form-label">Sexo</label>
                <asp:label runat="server" CssClass="form-text" ID="lblSexo"> <%# DataBinder.Eval(Container.DataItem, "Sexo") %></asp:label>
                <br />
                
            </div>
            <div class=" col-sm-3">
                <label class="form-label">Validade</label>
                <asp:Label  runat="server" CssClass="form-text"  ID="lblValidade" > <%# DataBinder.Eval(Container.DataItem, "Validade") %></asp:Label>
                <br />
            </div>
              
            <div class="col-sm-10">

                <label class="form-label">Descrição</label>
                <asp:label runat="server" Class="form-text" ID="txtDescricao"   Height="200"  > <%# DataBinder.Eval(Container.DataItem, "Descricao ") %> </asp:label>
                
            </div>
        </div> 
    </ItemTemplate>
    </asp:Repeater>
  
     
    <div class="col-md-12 row ">  
   <asp:Label runat="server" ID="lblMensagem"   CssClass="alert alert-danger col-lg-6" Visible="False" />
       <asp:Label runat="server" ID="lblMensagemCadastrado"  CssClass="alert alert-success col-lg-6" Visible="False"/>

    </div>
        <br /><br />
    <div class=" col-lg-12    ">  
          <br />
        <asp:Panel  runat="server" ID="PlEditar"  Visible="false" >

         <asp:Button runat="server"  CssClass="btn       order-1 ms-auto "   OnClick="btnExcluir_Click" TabIndex="8"  ID="btnExcluir"  Text="Descadastrar" />
        </asp:Panel>
        <br />
        <asp:Panel  runat="server" ID="PlCadastrar" Visible="false" >
         <asp:Button runat="server"  CssClass="btn btn-outline-danger ms-auto    order-2"  ID="Button2" Text="Cadastrar" TabIndex="7"  OnClick="Cadastrar_Click" />
        </asp:Panel>
 
    </div>
    </asp:Panel>
</asp:Content>
