<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="ErrorBebestible.aspx.cs" Inherits="CapaVista.PaginaDeErrores.ErrorBebestible" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
  <div class="container">
      <div class="row">
          <div class="col-md-6">
              <br />
    <br />  <asp:Label ID="lblBebestible" runat="server" Text="Bebestibles : "></asp:Label>
            <asp:DropDownList ID="DDLBebestible" runat="server"></asp:DropDownList><br /><br />
            <asp:Button ID="btnBebestible" runat="server" Text="Enviar Bebestible Seleccionado" OnClick="btnBebestible_Click" />
          </div>
          <div class="col-md-6">
              <asp:Label ID="lblError" runat="server" Text="Error"></asp:Label>
          </div>
      </div>

  </div>
</asp:Content>
