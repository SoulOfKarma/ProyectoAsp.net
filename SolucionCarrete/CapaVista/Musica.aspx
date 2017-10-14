<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="Musica.aspx.cs" Inherits="CapaVista.Musica" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
    <br /><br />
             <asp:Label ID="lblMusica" runat="server" Text="Tipo de musica : "></asp:Label>
        <asp:DropDownList ID="DDLMusica" runat="server"></asp:DropDownList><br /><br />
        <asp:Button ID="btnMusica" runat="server" Text="Enviar Tipo de Musica" OnClick="btnMusica_Click" />
</asp:Content>

     
