<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="MainPro.aspx.cs" Inherits="ChateauDuPet.UI.MainPro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <h1 class="h2">Vagas Disponiveis</h1>

    <hr class="featurette-divider">
    <div class="row"> 


                  <asp:Repeater ID="rptVaga1" runat="server" >
        <ItemTemplate>
            
    <div class="bg-light p-5 rounded mt-3">
    <h1><%# DataBinder.Eval(Container.DataItem, "Vaga") %></h1>
    <p class="lead"><%# DataBinder.Eval(Container.DataItem, "Descricao") %></p>
    <a class="btn btn-lg btn-primary" href="VagaProfissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdVaga ") %>" role="button">Ver mais »</a>
  </div>
                
        </ItemTemplate>
    </asp:Repeater>
    </div>

</asp:Content>
