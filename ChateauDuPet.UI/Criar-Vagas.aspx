<%@ Page Title="" Language="C#" MasterPageFile="~/DefultEmpresa.Master" AutoEventWireup="true" CodeBehind="Criar-Vagas.aspx.cs" Inherits="ChateauDuPet.UI.Criar_Vagas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
        <div class="row g-3" tabindex="-1" style=" margin:0 10px 0 10px">
            <span class="mb-3">
                         <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-columns-gap" viewBox="0 0 16 16">
  <path d="M6 1v3H1V1h5zM1 0a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1H1zm14 12v3h-5v-3h5zm-5-1a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-5zM6 8v7H1V8h5zM1 7a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1H1zm14-6v7h-5V1h5zm-5-1a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1h-5z"/>
</svg>
                            Vagas</span>
                        <br />
              <div class="col-md-6">
                        <label id="lblTitulo" class="form-label">Título</label>
                        <asp:TextBox CssClass="form-control" ID="txtTitulo" runat="server" TabIndex="1" MaxLength="100" />
                        <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txtTitulo" ErrorMessage="Campo Título é obrigatório" ForeColor="red" />
                  </div>
              
                  
            <div class="col-md-6">


                        <label for="username" class="form-label">Nível de Experiência</label>
                        <div class="input-group has-validation">
                            <asp:DropDownList ID="DLLExperiencia"     runat="server" CssClass="form-select" TabIndex="2">
                                <asp:ListItem Value="Até 1 ano" Text="Até 1 Ano"/>
                                <asp:ListItem Value="De 1 a 2 Anos" Text="De 1 a 2 Anos"/>
                                <asp:ListItem Value="De 3 a 4 Anos" Text="De 3 a 4 Anos" />
                                <asp:ListItem Value="Mais de 5 Anos" Text="Mais de 5 Anos" />
                            </asp:DropDownList>

                        </div>
            </div>

  <div class=" col-md-3">
                        <label class="form-label">Tipo de Registro</label>   <div class="input-group has-validation "  >
                            <asp:DropDownList ID="ddlResgistro"  Width="70%"   runat="server" CssClass="form-select" TabIndex="3">
                                <asp:ListItem Value="CLT" Text="CLT"/>
                                <asp:ListItem Value="Freelancer" Text="Freelancer" />
                                <asp:ListItem Value="Temporário" Text="Temporário" />
                                <asp:ListItem Value="PJ" Text="PJ" />
                            </asp:DropDownList>
              
            </div>
            </div>
  <div class=" col-md-4">
                        <label class="form-label">Sexo</label>   <div class="input-group has-validation "  >
                            <asp:DropDownList ID="DllSexo"  Width="70%"   runat="server" CssClass="form-select" TabIndex="4">
                                <asp:ListItem Value="Indiferente" Text="Indiferente" />
                                <asp:ListItem Value="Masculino" Text="Masculino"/>
                                <asp:ListItem Value="Feminino" Text="Feminino" />
                            </asp:DropDownList>
                  
            </div>
            </div>
  <div class=" col-md-4">
                        <label  class="form-label">Tempo disponivel</label> 
      <div class="input-group has-validation "  >
                            <asp:DropDownList ID="DllValidade"  Width="70%"   runat="server"  CssClass="form-select" TabIndex="5">
                                <asp:ListItem Value="7 Dias" Text="7 Dias"/>
                                <asp:ListItem Value="15 Dias" Text="15 Dias" />
                                <asp:ListItem Value="30 Dias" Text="30 Dias" />
                            </asp:DropDownList>
                     
            </div>
            </div>
            
  <div class="col-md-12">
                        <label class="form-label">Descrição</label>
                        <asp:TextBox runat="server" CssClass=" form-control"   ID="txtDescricao" MaxLength="200" TextMode="MultiLine" TabIndex="6" Height="300"  />
                                       </div>

              </div>
     
    <div class="col-md-12 row ">  
   <asp:Label runat="server" ID="lblMensagem"   CssClass="alert alert-danger col-lg-6" Visible="False" />
       <asp:Label runat="server" ID="lblMensagemCadastrado"  CssClass="alert alert-success col-lg-6" Visible="False"/>

    </div>  
    <div class=" col-lg-12    ">  
          <br />
        <asp:Panel  runat="server" ID="PlEditar"  Visible="false" >

         <asp:Button runat="server"  CssClass="btn       order-1 ms-auto "  TabIndex="8"  ID="btnExcluir"  Text="Excluir" />
         <asp:Button runat="server"  CssClass="btn       order-1 ms-auto btn-danger "   OnClick="btnSalvar_Click" TabIndex="7" ID="btnSalvar"  Text="Salvar" />
        </asp:Panel>
        <br />
        <asp:Panel  runat="server" ID="PlCadastrar" Visible="false" >
         <asp:Button runat="server"  CssClass="btn       order-1 ms-auto "  OnClick="btnCancelar_Click" TabIndex="8"  ID="btnCancelar"  Text="Cancelar" />
         <asp:Button runat="server"  CssClass="btn btn-outline-danger ms-auto    order-2"  ID="Cadastrar" Text="Cadastrar" TabIndex="7" OnClick="Cadastrar_Click" />
        </asp:Panel>
 
            </div>
    

</asp:Content>
