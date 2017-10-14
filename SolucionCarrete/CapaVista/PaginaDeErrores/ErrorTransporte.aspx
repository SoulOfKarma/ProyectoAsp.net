<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="ErrorTransporte.aspx.cs" Inherits="CapaVista.PaginaDeErrores.ErrorTransporte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
         <div class="container">
      <div class="row">
          <div class="col-md-6">

            <asp:Label ID="lblFecha" runat="server" Text="Seleccione Fecha Del Evento :"></asp:Label>
            <asp:Calendar ID="CLFecha" runat="server"></asp:Calendar><br /><br />
            <asp:Button ID="btnFecha" runat="server" Text="Enviar Fecha" OnClick="btnFecha_Click" />
          </div>
          <div class="col-md-6">
              <asp:Label ID="lblError" runat="server" Text="Error"></asp:Label>
          </div>
      </div>

  </div>
</asp:Content>
