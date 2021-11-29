<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="EditarExperiencia.aspx.cs" Inherits="ChateauDuPet.UI.Profissional.EditarExperiencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

           <h2>Experiências</h2>
        <hr class="featurette-divider">
    <div class="row g-3" tabindex="-1" >

            <div class="col-md-5">
                <label id="lblCargo" class="form-label">Cargo</label>
                <asp:TextBox runat="server" Class="form-control" ID="txtCargo" TabIndex="9" />
            </div>

            <div class="col-md-5">
                <label id="lblEmpresa" class="form-label">Nome da Empresa</label>
                <asp:TextBox runat="server" CssClass="form-control" TabIndex="10" ID="txtEmpresa" />

            </div>
            <div class="col-md-4">
                <label id="lblLocalidade" class="form-label">Localidade</label>
                <asp:TextBox runat="server" CssClass="form-control" MaxLength="50" TabIndex="10" ID="txtLocalidade" />

            </div>
            <div class=" col-md-3">
                <label class="form-label">Iniciou </label>
                <asp:TextBox runat="server" CssClass="form-control mes" MaxLength="7" ID="txtDataInicio"   TabIndex="4" />
                <br />
                
            </div>
            <div class=" col-md-3">
                <label class="form-label">Finalizou</label>
                <asp:TextBox runat="server" CssClass="form-control mes" ID="txtDataFinal"  MaxLength="7" TabIndex="4" />
                <br />
            </div>
            <div class="col-1">
  <asp:CheckBox runat="server" class="form-check-input" type="checkbox" id="cb"/>
  <label class="form-check-label" for="flexSwitchCheckDefault">Trabalho Atual</label>
</div>
            <div class="col-md-3">

                <label id="lblTipodeContrato" class="form-label">Tipo de Contratação</label>
                <asp:DropDownList runat="server" Class="form-select-sm" ID="ddlTipoCa" TabIndex="8">
                    <asp:ListItem Enabled="false" Selected="False" Text="Selecione uma opção"></asp:ListItem>
                    <asp:ListItem Text="CLT" Value="CLT"></asp:ListItem>
                    <asp:ListItem Text="Freelancer" Value="Freelancer"></asp:ListItem>
                    <asp:ListItem Text="Temporário" Value="Temporário"></asp:ListItem>
                    <asp:ListItem Text="PJ" Value="PJ"></asp:ListItem>

                </asp:DropDownList>

            </div>
            <div class="col-md-3">

                <label id="lblDescrição" class="form-label">Descrição</label>
                <asp:TextBox runat="server" Class="form-control" ID="txtDescricao" TabIndex="9" TextMode="MultiLine" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescricao" ErrorMessage="Fale um pouco sobre essa experiência" ForeColor="red" />
                
            </div>
        </div> 
    
    <hr class="featurette-divider">
    <div class="col-md-12 row g-3"> </div>
   <asp:Label runat="server" ID="lblMensagem"   CssClass="alert alert-danger col-md-4" Visible="False" />
       <asp:Label runat="server" ID="lblMensagemCadastrado"  CssClass="alert alert-success col-md-4" Visible="False"/>

         <asp:Button runat="server"  CssClass="btn btn-outline-danger"  ID="Cadastrar"  Text="Salvar" OnClick="BtnSalvar_Click" />
         <asp:Button runat="server"  CssClass="btn col-md-2 ms-auto"  OnClick="btnCancelar_Click" ID="btnCancelar"  Text="Exluir" />
</asp:Content>
