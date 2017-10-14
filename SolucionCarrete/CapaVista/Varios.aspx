<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="Varios.aspx.cs" Inherits="CapaVista.Varios" %>


           

   <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
    <br /><br /> 
    <asp:Label ID="lblServicios" runat="server" Text="Otros Servicios : "></asp:Label>
            <asp:DropDownList ID="DDLVarios" runat="server"></asp:DropDownList><br /><br />
            <asp:Button ID="btnVarios" runat="server" Text="Enviar Servicios Varios" OnClick="btnVarios_Click" />
</asp:Content>

