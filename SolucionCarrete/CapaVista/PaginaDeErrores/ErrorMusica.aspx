<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="ErrorMusica.aspx.cs" Inherits="CapaVista.PaginaDeErrores.ErrorMusica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
     <div class="container">
      <div class="row">
          <div class="col-md-6">
    <br /><br />
             <asp:Label ID="lblMusica" runat="server" Text="Tipo de musica : "></asp:Label>
        <asp:DropDownList ID="DDLMusica" runat="server"></asp:DropDownList><br /><br />
        <asp:Button ID="btnMusica" runat="server" Text="Enviar Tipo de Musica" OnClick="btnMusica_Click" />
          </div>
          <div class="col-md-6">
              <asp:Label ID="lblError" runat="server" Text="Error"></asp:Label>
          </div>
      </div>

  </div>
</asp:Content>
