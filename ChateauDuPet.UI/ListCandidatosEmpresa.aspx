<%@ Page Title="" Language="C#" MasterPageFile="~/DefultEmpresa.Master" AutoEventWireup="true" CodeBehind="ListCandidatosEmpresa.aspx.cs" Inherits="ChateauDuPet.UI.Empresa.ListCandidatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
      <h2>Profissonais</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col"># ID Profissional</th>
              <th scope="col">Nome</th>
              <th scope="col">User</th>
              <th scope="col">Email</th>
              <th scope="col">Tel</th>
            </tr>
          </thead>
          <tbody>
              
        <asp:Repeater ID="rptPro"  runat="server">
            <ItemTemplate>
            <tr>
              <td> <a class="btn btn-primary" href="Perfil-User.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>">Ver mais</a></td>
              <td><%# DataBinder.Eval(Container.DataItem, "Nome") %></td>
              <td><%# DataBinder.Eval(Container.DataItem, "Email") %></td>
              <td><%# DataBinder.Eval(Container.DataItem, "Telefone") %></td>
              <td> <a  href="Perfil-User.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>"> <asp:Image runat="server"  DescriptionUrl="Imagens/icones/cursor.svg" /></a> 
              </td>
            </tr>
              
            </ItemTemplate>
        </asp:Repeater>
          </tbody>
        </table>
      </div>
</asp:Content>
