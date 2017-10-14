<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="ErrorComida.aspx.cs" Inherits="CapaVista.PaginaDeErrores.ErrorComida" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
     <div class="container">
      <div class="row">
          <div class="col-md-6">
   <br /><br /> 
         <asp:Label id="lblComida" runat="server">Seleccione Tipo de Comida : </asp:Label>
        <asp:DropDownList ID="DDLComida" runat="server"></asp:DropDownList><br /><br />
        <asp:Button ID="btnComida" runat="server" Text="Enviar Tipo de Comida" OnClick="btnComida_Click" />

          </div>
          <div class="col-md-6">
              <asp:Label ID="lblError" runat="server" Text="Error"></asp:Label>
          </div>
      </div>

  </div>
</asp:Content>