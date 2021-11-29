<%@ Page Title="" Language="C#" MasterPageFile="~/DefultADM.Master" AutoEventWireup="true" CodeBehind="ListEmpresa.aspx.cs" Inherits="ChateauDuPet.UI.ListEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <h2>Empresa</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col"># ID </th>
              <th scope="col">Nome</th>
              <th scope="col">User</th>
              <th scope="col">Email</th>
              <th scope="col">Tel</th>
              <th scope="col">Perfil</th>
            </tr>
          </thead>
          <tbody>
              
        <asp:Repeater ID="rptPro"  runat="server">
            <ItemTemplate>
            <tr>
              <td><%# DataBinder.Eval(Container.DataItem, "IdEmpresa  ") %></td>
              <td><%# DataBinder.Eval(Container.DataItem, "Recrutador  ") %></td>
              <td><%# DataBinder.Eval(Container.DataItem, "CPF ") %></td>
              <td><%# DataBinder.Eval(Container.DataItem, "Email ") %></td>
              <td><%# DataBinder.Eval(Container.DataItem, "Telefone") %></td>
              <td> <a href="VagaProfissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdEmpresa ") %>" ><asp:Image runat="server" Width="30" Height="30"  class="" ImageUrl="Imagens/icones/cursor.svg"   />  </a> 
              </td>
            </tr>
              
            </ItemTemplate>
        </asp:Repeater>
          </tbody>
        </table>
      </div>
</asp:Content>
