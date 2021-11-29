<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="EditarCetificado.aspx.cs" Inherits="ChateauDuPet.UI.EditarCetificado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <asp:Repeater ID="rptCursoEditar" runat="server" Visible="false" >
                        <ItemTemplate>
                            <div class="col-md-3">
                                <label class="form-label">Curso :</label>
                                <asp:TextBox  runat="server" CssClass="form-text" ID="txtCurso"  TabIndex="1"  Text="<%# DataBinder.Eval(Container.DataItem, "Curso ") %>"/>
                            </div>
                            <div class="col-md-3">
                                <label id="lblInstituição" class="form-label">Instituição :</label>
                                <asp:TextBox runat="server" CssClass="form-text" ID="txtinstituiçao" TabIndex="2" Text="<%# DataBinder.Eval(Container.DataItem, "Instituicao") %>" />

                            </div>
                            <div class=" col-md-2">
                                <label class="form-label">Iniciou : </label>
                                <asp:TextBox runat="server" CssClass="form-text" ID="txtDataInicial" TextMode="Date" TabIndex="3" Text=" <%# DataBinder.Eval(Container.DataItem, "DataInicio") %>" />
                                <br />
                            </div>
                            <div class=" col-md-2">
                                <label class="form-label">Conclusção : </label>
                                <asp:TextBox runat="server" CssClass="form-text" ID="txtDataFinal"  Text="<%# DataBinder.Eval(Container.DataItem, "DataConclusao") %>" TabIndex="4" />
                                <br />
                            </div>
                            <div class=" col-md-12">

                                <label id="lblDescricao" class="form-label">Descrição</label>
                                <asp:TextBox runat="server"  CssClass=" form-text" ID="txtDescricaoCurso" TextMode="MultiLine" Text=" <%# DataBinder.Eval(Container.DataItem, "Descricao") %>" TabIndex="5" />
                                
                            <div class="col-md-2 ms-auto g-2">
                                    <asp:Button runat="server"  CssClass="btn btn-outline-danger"  Visible="false"  ID="EditarCertificado"   OnClick="EditarCertificado_Click" Text="Atualizar" />
                            </div>
    <hr class="featurette-divider">

                        </ItemTemplate>
                    </asp:Repeater>
    
</asp:Content>
