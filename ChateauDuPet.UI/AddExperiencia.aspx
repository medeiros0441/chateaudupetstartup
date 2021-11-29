<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="AddExperiencia.aspx.cs" Inherits="ChateauDuPet.UI.AddExperiência" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                             <h2>Experiência</h2>
        <hr class="featurette-divider">
    <div class="row  me-3 ms-3 " tabindex="-1" >
       <div class="col-12 row g-1">

            <div class="col-sm-6">
                <label id="lblCargo" class="form-label">Cargo</label>
                <asp:TextBox runat="server" Class="form-control" ID="txtCargo" TabIndex="1" />
            </div>

            <div class="col-sm-6">
                <label id="lblEmpresa" class="form-label">Nome da Empresa</label>
                <asp:TextBox runat="server" CssClass="form-control" TabIndex="2" ID="txtEmpresa" />

            </div>
      
      
         
            <div class="col-lg-6"> 

                <label id="lblTipodeContrato" class="form-label">Tipo de Contratação</label>
                <asp:DropDownList runat="server"   Class=" form-select  " ID="ddlTipoCa" TabIndex="3">
                    <asp:ListItem Selected="false"  Text="Selecione uma opção"></asp:ListItem>
                    <asp:ListItem Text="CLT" Value="CLT"></asp:ListItem>
                    <asp:ListItem Text="Freelancer" Value="Freelancer"></asp:ListItem>
                    <asp:ListItem Text="Temporário" Value="Temporário"></asp:ListItem>
                    <asp:ListItem Text="PJ" Value="PJ"></asp:ListItem>

                </asp:DropDownList>
                <br />
            </div>  
           
          <div class="col-lg-6 row">
          <div class=" col-6 ">
                <label class="form-label">Iniciou  </label> <label class="text-muted">Mes/Ano</label>
                <asp:TextBox runat="server" CssClass="form-control  mes" MaxLength="7"  ID="txtDataInicio"  TabIndex="4" />
          </div>
          <div class=" col-6">
                <label class="form-label">Finalizou</label> <label class="text-muted">Mes/Ano</label>
                <asp:TextBox runat="server" CssClass="form-control mes" ID="txtDataFinal"   MaxLength="7" TabIndex="5" />
          </div>
               

        </div>
        
            <div class="col-12">
                  <br />
                <label id="lblDescrição" class="form-label">Descrição </label><label class="text-muted"></label>
                <asp:TextBox runat="server"  Class="form-control" ID="txtDescricao" TabIndex="6" Height="200" TextMode="MultiLine" />
                <br />
            </div>
     
    <div class="col-md-12 row ">  
   <asp:Label runat="server" ID="lblMensagem"   CssClass="alert alert-danger col-lg-6" Visible="False" />
       <asp:Label runat="server" ID="lblMensagemCadastrado"  CssClass="alert alert-success col-lg-6" Visible="False"/>

    </div>  </div>  
    <div class=" col-lg-12    ">  
          <br />
        <asp:Panel  runat="server" ID="PlEditar"  Visible="false" >

         <asp:Button runat="server"  CssClass="btn       order-1 ms-auto "  OnClick="btnExcluir_Click" TabIndex="8"  ID="btnExcluir"  Text="Excluir" />
         <asp:Button runat="server"  CssClass="btn       order-1 ms-auto btn-danger "   OnClick="btnSalvar_Click" TabIndex="7" ID="btnSalvar"  Text="Salvar" />
        </asp:Panel>
        <br />
        <asp:Panel  runat="server" ID="PlCadastrar" Visible="false" >
         <asp:Button runat="server"  CssClass="btn       order-1 ms-auto "  OnClick="btnCancelar_Click" TabIndex="8"  ID="btnCancelar"  Text="Cancelar" />
         <asp:Button runat="server"  CssClass="btn btn-outline-danger ms-auto    order-2"  ID="Cadastrar" Text="Cadastrar" TabIndex="7" OnClick="Cadastrar_Click" />
        </asp:Panel>
 
            </div>
    
        </div> 

     

</asp:Content>
