<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="ErrorVarios.aspx.cs" Inherits="CapaVista.PaginaDeErrores.ErrorVarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
         <div class="container">
      <div class="row">
          <div class="col-md-6">

              <asp:Label ID="lblServicios" runat="server" Text="Otros Servicios : "></asp:Label>
            <asp:DropDownList ID="DDLVarios" runat="server"></asp:DropDownList><br /><br />
            <asp:Button ID="btnVarios" runat="server" Text="Enviar Servicios Varios" OnClick="btnVarios_Click" />
          </div>
          <div class="col-md-6">
              <asp:Label ID="lblError" runat="server" Text="Error"></asp:Label>
          </div>
      </div>

  </div>
</asp:Content>
