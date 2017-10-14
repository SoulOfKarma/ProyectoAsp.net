<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="Lugar.aspx.cs" Inherits="CapaVista.Lugar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
    <br />
       <asp:Label ID="lblLugares" runat="server">Seleccione Lugares : </asp:Label>
            <asp:DropDownList ID="DDLLugares" runat="server"></asp:DropDownList><br /><br />
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar Lugar" OnClick="btnEnviar_Click" />

</asp:Content>