<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="CandidaturaPro.aspx.cs" Inherits="ChateauDuPet.UI.CandidaturaPro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <h2>Candidatura</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">Nome</th>
              <th scope="col">Tipo</th>
              <th scope="col">Validade</th>
              <th scope="col">Empresa</th>
              <th scope="col">Ver mais</th>
            </tr>
          </thead>
          <tbody>
              
        <asp:Repeater ID="rptVagaTable"  runat="server">
            <ItemTemplate>
            <tr>
              <td> <a class="btn btn-primary" href="Perfil-User.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdVaga") %>">Ver mais</a></td>
              <td> <a  href="VagaProfissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdVaga ") %>"> <asp:Image runat="server" CssClass=""  DescriptionUrl="Imagens/icones/cursor.svg " Width="30" Height="30" /></a> <a  href="~/VagaProfissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdVaga ") %>"></a> 
              </td>
            </tr>
              
            </ItemTemplate>
        </asp:Repeater>
          </tbody>
        </table>
      </div>
</asp:Content>
