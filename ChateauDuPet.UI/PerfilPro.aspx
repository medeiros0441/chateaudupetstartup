<%@ Page Title="" Language="C#" MasterPageFile="~/DefultEmpresa.Master" AutoEventWireup="true" CodeBehind="PerfilPro.aspx.cs" Inherits="ChateauDuPet.UI.PerfilPro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" > 
     
    <h1  class="form-label">Perfil</h1>
    <hr />
     <div  class="row  " > 
   
    <asp:Repeater ID="rptPerfil"  runat="server">
        <ItemTemplate>
            <div class="row featurette">
                <div class="col-lg-4 ms-lg-auto ">
                    
  <img  src="<%# DataBinder.Eval(Container.DataItem, "UrlImage").ToString().Replace("~", ".") %>"   class="  rounded-circle    border  " Width="240" Height="240"  alt="Card image cap">
<br />
                </div>


                <div class="col-lg-8"> 
                        <div class="row g-2 gy-2">
                            <div class="col-md-10">
                                    <label class="form-label">Nome Completo :</label>
                                    <asp:Label runat="server" CssClass="form-text col-md-10" ID="lblNome"><%# DataBinder.Eval(Container.DataItem, "Nome") %></asp:Label>

                                </div>

                            <div class="col-md-4">
                                    <label class="form-label">Usuário :</label>
                                    <asp:Label runat="server" CssClass="form-text col-lg-10" ID="lbluser"><%# DataBinder.Eval(Container.DataItem, "User") %></asp:Label>

                            </div>
                            <div class="col-md-8">
                                    <label class="form-label">Formação Acadêmica :</label>
                                    <asp:Label ID="lblFormacaoEscolar" CssClass="form-text " runat="server"><%# DataBinder.Eval(Container.DataItem, "FormacaoEscolar") %></asp:Label>

                            </div>
                                <div class="col-md-6">
                                    <label class="form-label ">Data de Nascimento :</label>
                                    <asp:Label runat="server" ID="DataAniversario" CssClass="form-text" ><%# DataBinder.Eval(Container.DataItem, "Nascimento") %></asp:Label>
                                </div>
                                <div class=" col-6">

                                    <label class="form-label">Sexo :</label>
                                    <asp:Label runat="server" ID="lblSexo" CssClass="form-text"  ><%# DataBinder.Eval(Container.DataItem, "Sexo") %></asp:Label>
                                </div>
                            <div class="col-sm-10">
                                    <label class="form-label">Biografia Acadêmica</label><br />
                                    <asp:Label ID="lblBiografiaPro" runat="server" CssClass="form-text"><%# DataBinder.Eval(Container.DataItem, "Biografia") %></asp:Label>
                            </div> <div class="col-sm-2 ms-auto g-2">
                                   
                            </div>
                                 
                        </div>
                    </div>



        </ItemTemplate>
    </asp:Repeater>
          
     <div  class="row col-12  ms-3  " > 

         <div class="col-md-4" >
                <h2 class=" modal-title"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8 1a3 3 0 1 0 0 6 3 3 0 0 0 0-6zM4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z"/>
</svg> Endereço</h2>

       

                       
                    <asp:Repeater ID="rptEndereco" runat="server">
            <ItemTemplate>        <div class="col-12">
                                <label class="form-label">Endereço : </label>
                <asp:Label runat="server" CssClass="form-text" ID="lblEndereco"><%# DataBinder.Eval(Container.DataItem, "Endereco") %></asp:Label>
                            </div>
                            <div class="col-12">
                                <label class="form-label">Número :  </label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblNumero"><%# DataBinder.Eval(Container.DataItem, "NroEndereco") %></asp:Label>
                            </div>
                            <div class="col-12">
                                <label class="form-label">CEP :  </label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblCep"><%# DataBinder.Eval(Container.DataItem, "CEP") %></asp:Label>
                            </div>
                            <div class="col-12">
                                <label class="form-label">Complemento : </label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblComplemento"><%# DataBinder.Eval(Container.DataItem, "Complemento") %></asp:Label>
                            </div>
                            <div class="col-12">
                                <label class="form-label">Bairro : </label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblBairro"><%# DataBinder.Eval(Container.DataItem, "Bairro") %></asp:Label>
                            </div>
                            <div class="col-12">
                                <label class="form-label">Cidade : </label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblCidade"><%# DataBinder.Eval(Container.DataItem, "Cidade") %></asp:Label>
                            </div>
                            <div class="col-12">
                                <label class="form-label">UF : </label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblUF"><%# DataBinder.Eval(Container.DataItem, "UF") %></asp:Label>
                            </div>
                
            </ItemTemplate>
        </asp:Repeater>

</div>
         <div class="col-md-8 row" >
         <div class="accordion accordion-flush col-12" id="accordionFlushExample">
  <div class="accordion-item col-12">
    <h2 class="accordion-header col-12" id="flush-headingOne">
      <button class="accordion-button collapsed col-12" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        Formação Profissional
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body ">

                    <asp:Repeater ID="rptCurso"  runat="server">
                        <ItemTemplate>
                            <div class="row">
                            <div class="col-sm-6">
                                <label class="form-label">Curso :</label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblCurso"><%# DataBinder.Eval(Container.DataItem, "Curso ") %></asp:Label>
                            </div>
                            <div class="col-sm-6">
                                <label id="lblInstituição" class="form-label">Instituição :</label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblInstituiçao"><%# DataBinder.Eval(Container.DataItem, "Instituicao") %></asp:Label>

                            </div>

                            <div class=" col-sm-6">
                                <label class="form-label">Iniciou : </label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblDataInicial" TextMode="Month"><%# DataBinder.Eval(Container.DataItem, "DataInicio") %></asp:Label>
                                <br />
                            </div>
                            <div class=" col-sm-6">
                                <label class="form-label">Conclusção : </label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblDataFinal"><%# DataBinder.Eval(Container.DataItem, "DataConclusao") %></asp:Label>
                                <br />
                            </div>
                            <div class=" col-10">

                                <label id="lblDescricao" class="form-label">Descrição</label>
                                <asp:Label runat="server" Class="form-text " ID="txtDescricaoCurso" TextMode="MultiLine"><%# DataBinder.Eval(Container.DataItem, "Descricao") %></asp:Label> 
                          
                            </div> 
                            </div>
                                     

                        </ItemTemplate>
                    </asp:Repeater></div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        Experiência Profissional
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body "> 
                    <asp:Repeater ID="rptExperiencia" runat="server">
                        <ItemTemplate>
                            
                            <div class="row g-1">
                            <div class="col-sm-6">
                                <label class="form-label">Cargo</label>
                                <asp:Label runat="server" Class="form-text" ID="lblCargo"><%# DataBinder.Eval(Container.DataItem, "Cargo ") %></asp:Label>
                            </div>

                            <div class="col-sm-6">
                                <label class="form-label">Nome da Empresa</label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblEmpresa"><%# DataBinder.Eval(Container.DataItem, "Empresa ") %></asp:Label>

                            </div> 
                            <div class="col-sm-3">
                                <label class="form-label">Iniciou</label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblDataInicio" TextMode="Date"><%# DataBinder.Eval(Container.DataItem, "DataInicio") %></asp:Label>
                                <br />
                            </div>
                            <div class="col-sm-3">
                                <label class="form-label">Conclusão</label>
                                <asp:Label runat="server" CssClass=" form-text" ID="lblDataFinal" TextMode="Date"><%# DataBinder.Eval(Container.DataItem, "DataFinal") %></asp:Label>
                                <br />
                            </div>
                            <div class="col-sm-4">

                                <label class="form-label">Contratação</label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblTipodeContrato"><%# DataBinder.Eval(Container.DataItem, "TipoContrato") %></asp:Label>


                            </div>
                            
                            <div class="col-10">
                                <label class="form-label">Descrição</label>
                                <asp:Label runat="server" CssClass="form-text" ID="lblLocalidade"> <%# DataBinder.Eval(Container.DataItem, "Localidade ") %></asp:Label>

                            </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>

      </div>
    </div>
  </div> 
</div>

</div>
</div>
</div>
                        </div>
</asp:Content>
