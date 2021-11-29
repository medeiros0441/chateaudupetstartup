<%@ Page Title="" Language="C#" MasterPageFile="~/DefultADM.Master" AutoEventWireup="true" CodeBehind="MainAdm.aspx.cs" Inherits="ChateauDuPet.UI.MainAdm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    

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
              <th scope="col">Perfil</th>
            </tr>
          </thead>
          <tbody>
              
        <asp:Repeater ID="rptPro"  runat="server">
            <ItemTemplate>
            <tr>
              <td><%# DataBinder.Eval(Container.DataItem, "IdProfissional") %></td>
              <td><%# DataBinder.Eval(Container.DataItem, "Nome") %></td>
              <td><%# DataBinder.Eval(Container.DataItem, "User") %></td>
              <td><%# DataBinder.Eval(Container.DataItem, "Email") %></td>
              <td><%# DataBinder.Eval(Container.DataItem, "Telefone") %></td>
              <td> <a href="Perfil-User.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>" ><asp:Image runat="server" Width="30" Height="30"  class="" ImageUrl="Imagens/icones/cursor.svg"   />  </a> 
              </td>
            </tr>
              
            </ItemTemplate>
        </asp:Repeater>
          </tbody>
        </table>
      </div>
</asp:Content>


