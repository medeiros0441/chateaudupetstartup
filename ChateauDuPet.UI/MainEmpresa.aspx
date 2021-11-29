<%@ Page Title="" Language="C#" MasterPageFile="~/DefultEmpresa.Master" AutoEventWireup="true" CodeBehind="MainEmpresa.aspx.cs" Inherits="ChateauDuPet.UI.MainEmpre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Container">
    
      <h3 class="h5 mb-5">Profissionais</h3>
    <hr class="featurette-divider">
    

    <div class="row mb-2">
        
        <asp:Repeater ID="rptPro"  runat="server">
            <ItemTemplate>
    <div class="col-md-6">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary"><%# DataBinder.Eval(Container.DataItem, "Nome") %></strong>
          <h3 class="mb-0"><%# DataBinder.Eval(Container.DataItem, "FormacaoEscolar") %> </h3>
          <div class="mb-1 text-muted"><%# DataBinder.Eval(Container.DataItem, "Sexo") %></div>
          <p class="card-text mb-auto"><%# DataBinder.Eval(Container.DataItem, "Biografia") %></p>
          <a href="PerfilPro.aspx?id=<%# DataBinder.Eval(Container.DataItem, "idProfissional") %>" class="stretched-link">ver perfil</a>
        </div>
        <div class="col-auto d-none d-lg-block">

            <img src="<%# DataBinder.Eval(Container.DataItem, "UrlImage").ToString().Replace("~", ".") %>"  class="bd-placeholder-img" width="200" height="250"/>
        </div>
      </div>
    </div>
  </div>

            </ItemTemplate>
        </asp:Repeater>
    </div>
    </div>

      

</asp:Content>
