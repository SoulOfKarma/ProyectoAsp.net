<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="ErrorLugar.aspx.cs" Inherits="CapaVista.PaginaDeErrores.ErrorLugar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
      <div class="container">
      <div class="row">
          <div class="col-md-6">
 
       <asp:Label ID="lblLugares" runat="server">Seleccione Lugares : </asp:Label>
            <asp:DropDownList ID="DDLLugares" runat="server"></asp:DropDownList><br /><br />
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar Lugar" OnClick="btnEnviar_Click" />

          </div>
          <div class="col-md-6">
              <asp:Label ID="lblError" runat="server" Text="Error"></asp:Label>
          </div>
      </div>

  </div>
</asp:Content>
