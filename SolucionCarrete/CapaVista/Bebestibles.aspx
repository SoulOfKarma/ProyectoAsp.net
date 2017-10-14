<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="Bebestibles.aspx.cs" Inherits="CapaVista.Bebestibles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server"><br />
    <br />  <asp:Label ID="lblBebestible" runat="server" Text="Bebestibles : "></asp:Label>
            <asp:DropDownList ID="DDLBebestible" runat="server"></asp:DropDownList><br /><br />
            <asp:Button ID="btnBebestible" runat="server" Text="Enviar Bebestible Seleccionado" OnClick="btnBebestible_Click" />
</asp:Content>
