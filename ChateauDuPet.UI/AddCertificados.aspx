  <%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="AddCertificados.aspx.cs" Inherits="ChateauDuPet.UI.AddCertificados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2>Formação Profissional</h2>
    <hr class="featurette-divider">
                <div class="row   ms-auto" tabindex="-1">
                   
            <div class="col-sm-6">
                <label id="lblCurso" class="form-label">Nome do Curso</label>
                <asp:TextBox runat="server" Class="form-control" ID="txtCurso" TabIndex="1" />
            </div>

            <div class="col-sm-6">
                <label id="lblInstituição" class="form-label">Nome da Instituição</label>
                <asp:TextBox runat="server" CssClass="form-control" TabIndex="2" ID="txtInstituiçao"  MaxLength="50" />
 
            </div>
          <div class=" col-6 ">
                <label class="form-label">Iniciou  </label> <label class="text-muted">Mes/Ano</label>
                <asp:TextBox runat="server" CssClass="form-control  mes" MaxLength="7"  ID="txtDataInicio"  TabIndex="3" />
          </div>
          <div class=" col-6">
                <label class="form-label">Finalizou</label> <label class="text-muted">Mes/Ano</label>
                <asp:TextBox runat="server" CssClass="form-control mes" ID="txtDataFinal"   MaxLength="7" TabIndex="4" />
          </div>
            <div class="col-sm-12">

                <label id="lblDescricao" class="form-label">Descrição</label>
                <asp:TextBox runat="server" Class="form-control" ID="txtDescricaoCurso" MaxLength="300"  Height="200"  TabIndex="5" TextMode="MultiLine"    />
                <br /><br />
            </div>
    <div class="col-md-12 row ">  
   <asp:Label runat="server" ID="lblMensagem"   CssClass="alert alert-danger col-lg-6" Visible="False" />
       <asp:Label runat="server" ID="lblMensagemCadastrado"  CssClass="alert alert-success col-lg-6" Visible="False"/>
       
        </div>
        
        <br /><br />
    <div class=" col-lg-12    ">  
          <br />
        <asp:Panel  runat="server" ID="PlEditar"  Visible="false" >

         <asp:Button runat="server"  CssClass="btn       order-1 ms-auto "  OnClick="btnExcluir_Click" TabIndex="8"  ID="btnExcluir"  Text="Excluir" />
         <asp:Button runat="server"  CssClass="btn       order-1 ms-auto btn-danger "   OnClick="btnEditar_Click" TabIndex="7" ID="btnSalvar"  Text="Salvar" />
        </asp:Panel>
        <br />
        <asp:Panel  runat="server" ID="PlCadastrar" Visible="false" >
         <asp:Button runat="server"  CssClass="btn       order-1 ms-auto "  OnClick="btnCancelar_Click" TabIndex="8"  ID="btnCancelar"  Text="Cancelar" />
         <asp:Button runat="server"  CssClass="btn btn-outline-danger ms-auto    order-2"  ID="Cadastrar" Text="Cadastrar" TabIndex="7" OnClick="Cadastrar_Click" />
        </asp:Panel>
 
            </div>
    
        </div> 

     
    
</asp:Content>
