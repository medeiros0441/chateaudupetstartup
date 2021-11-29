<%@ Page Title="" Language="C#" MasterPageFile="~/DefultEmpresa.Master" AutoEventWireup="true" CodeBehind="EditarEmpresa.aspx.cs" Inherits="ChateauDuPet.UI.EditarEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <h1  class="form-label">Editar Perfil</h1>
    
            <hr class="featurette-divider ms-auto">  
      <div  class="row" > 
    
                <div class="col-md-3">
            <asp:ImageButton  runat="server" ID="imagePro"   CssClass="rounded-circle ms-auto" Width="240" Height="240" />
     <br />
         <asp:FileUpload runat="server"  CssClass=""      ID="fUp1" Width="200"  />
                </div>
            <div class="row  col-lg-10 ms-1"> 
              
                        <div class="row g-2">
                            <div class="col-sm-6">

                <label id="lblNome" class="form-label">Nome</label>
                <asp:TextBox CssClass="form-control col-sm-5" ID="txtNome" runat="server" TabIndex="1" MaxLength="100" />
                                </div>
                            <div class="col-sm-6">

                <label class="form-label">CPF</label>
               <asp:TextBox   runat="server" CssClass="form-control cpf   col-sm-5"  Enabled="false"  TabIndex="2" ID="lblCPF" />
                                </div>

                            <div class="col-6"> <label id="lbluser" class="form-label">Usuario</label>
                <div class="input-group has-validation">
                    <span class="input-group-text">@</span>
                    <asp:TextBox runat="server" CssClass="form-control User"  Width="70%" ID="txtUser" MaxLength="15" TabIndex="3" />
                </div>

                                </div>
                                <div class="col-6">
                                    
                <label for="username" class="form-label">Sexo</label>
                <div class="input-group has-validation">
                    <asp:DropDownList ID="DDLSexo" runat="server" CssClass="form-select "  TabIndex="4">
                        <asp:ListItem Value="Masculino" Text="Masculino" />
                        <asp:ListItem Value="Feminino" Text="Feminino" />
                    </asp:DropDownList>
                                </div>
                                </div>
                                <div class=" col-6">
                <label class="form-label">Data de Nascimento </label>
                <asp:TextBox runat="server" CssClass="form-control date" ID="txtData" TabIndex="5"/>
                                </div>
                            <div class="col-6">
                                    
                <label id="lblTelefone" class="form-label">Telefone </label>
                <asp:TextBox runat="server" CssClass="form-control  phone" ID="txtTelefone" TextMode="Phone" TabIndex="6" MaxLength="15" />
                                </div><div class=" col-sm-9">
                                    
                <label id="lblEmail" class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control  "  Enabled="false" ID="txtEmail" TabIndex="8" MaxLength="100" TextMode="Email" /> 
                                </div>
                            <div class="col-8">
                                    <label class="form-label">CNPJ </label><br />
                                    <asp:TextBox ID="txtCnpj" CssClass=" Cnpj form-control" MaxLength="15" runat="server"  />
                            </div>
                                 
                            <div class="col-4">
                                    <label class="form-label">Data de Abertura</label><br />
                                    <asp:TextBox ID="txtDataAbertura" MaxLength="10" CssClass=" date form-control" runat="server"  />
                            </div>

                            <div class="col-md-12">
                <label  class="form-label">Nome Fantasia</label>
                <asp:TextBox   runat="server" CssClass="form-control  " ID="txtNomeFantasia" style=" max-height: 100px" Height="100"   TabIndex="6" Width="100%"  MaxLength="100"  />
                                </div>
                   
                            <div class="col-md-12">
                <label  class="form-label">Razão Social</label>
                <asp:TextBox   runat="server" CssClass="form-control  "  ID="txtRazaoSocial" style=" max-height: 100px" Height="100"    TabIndex="6" Width="100%" MaxLength="70"  />
                                </div> 
         <div class="row col-md-12 ">
             <h2 class=""><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8 1a3 3 0 1 0 0 6 3 3 0 0 0 0-6zM4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z"/>
</svg> Endereço</h2>

       <asp:Panel runat="server" ID="pl"> 

       </asp:Panel>

                         <div class="col-md-3">
                <label id="lblrua" class="form-label">Rua</label>
                <asp:TextBox runat="server"  CssClass="form-control" ID="txtEndereco" MaxLength="100" TabIndex="9"   />
                            </div>
                            <div class="col-6">
                <label id="lblNumero" class="form-label">Número</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtNumero" MaxLength="5" TabIndex="10"   />
                            </div>
                            <div class="col-6">
                <label id="lblCEP" class="form-label">CEP</label>
                <asp:TextBox runat="server" CssClass="form-control cep" ID="txtCEP" MaxLength="10" TabIndex="12"  />
                            </div>
                            <div class="col-6">
                <label id="lblComplemento" class="form-label">Complemento</label>
                <asp:TextBox runat="server"  CssClass="form-control" ID="txtComplemento" TabIndex="13" MaxLength="50"    />
                            </div>
                            <div class="col-4">
                <label id="lblUF" class="form-label col-10">UF</label>
       
                <asp:DropDownList runat="server" CssClass="form-select " ID="dllEstado">
                    <asp:ListItem Selected="False" Text="Selecione" />
                    <asp:ListItem Value="RO" Text="RO" />
                    <asp:ListItem Value="AC" Text="AC" />
                    <asp:ListItem Value="AM" Text="AM" />
                    <asp:ListItem Value="RR" Text="RR" />
                    <asp:ListItem Value="PA" Text="PA" />
                    <asp:ListItem Value="AP" Text="AP" />
                    <asp:ListItem Value="TO" Text="TO" />
                    <asp:ListItem Value="MA" Text="MA" />
                    <asp:ListItem Value="PI" Text="PI" />
                    <asp:ListItem Value="CE" Text="CE" />
                    <asp:ListItem Value="RN" Text="RN" />
                    <asp:ListItem Value="PB" Text="PB" />
                    <asp:ListItem Value="PE" Text="PE" />
                    <asp:ListItem Value="AL" Text="AL" />
                    <asp:ListItem Value="SE" Text="SE" />
                    <asp:ListItem Value="BA" Text="BA" />
                    <asp:ListItem Value="MG" Text="MG" />
                    <asp:ListItem Value="ES" Text="ES" />
                    <asp:ListItem Value="RJ" Text="RJ" />
                    <asp:ListItem Value="SP" Text="SP" />
                    <asp:ListItem Value="PR" Text="PR" />
                    <asp:ListItem Value="SC" Text="SC" />
                    <asp:ListItem Value="RS" Text="RS" />
                    <asp:ListItem Value="MS" Text="MS" />
                    <asp:ListItem Value="MT" Text="MT" />
                    <asp:ListItem Value="GO" Text="GO" />
                    <asp:ListItem Value="DF" Text="DF" />
                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                <label id="" class="form-label">Bairro</label>
                <asp:TextBox runat="server" CssClass="form-control"  TabIndex="14" ID="txtBairro"  />
                            </div>
                            <div class="col-md-3">
                <label id="lblCidade" class="form-label">Cidade</label>
                <asp:TextBox runat="server"  CssClass="form-control" ID="txtCidade" TabIndex="15"   />
                            </div> 
                
        
                        </div>

                <br /><br />
                                </div>
                             
     
    </div>

        <div class="col-sm-12 ">
              <asp:Label runat="server" ID="lblMensagem"   CssClass="alert alert-danger col-md-4" Visible="False" />
       <asp:Label runat="server" ID="lblMensagemCadastrado"  CssClass="alert alert-success col-md-4" Visible="False"/>
        </div>
            <div class="col-md-12  ">
                <asp:Button runat="server" ID="btnCancelar"    Text="Cancelar" CssClass="btn col-sm-2    " />
                <asp:Button runat="server"    Text="Salvar"  OnClick="Salvar_Click"  ID="Salvar"  CssClass="btn  col-sm-2 btn-outline-secondary"  />
                <br />
            </div>
                               
     </div>  
</asp:Content>
