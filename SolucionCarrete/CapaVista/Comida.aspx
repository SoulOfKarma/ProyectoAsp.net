<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true"CodeBehind="Comida.aspx.cs" Inherits="CapaVista.Comida" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <br /><br /> 
         <asp:Label id="lblComida" runat="server">Seleccione Tipo de Comida : </asp:Label>
        <asp:DropDownList ID="DDLComida" runat="server"></asp:DropDownList><br /><br />
        <asp:Button ID="btnComida" runat="server" Text="Enviar Tipo de Comida" OnClick="btnComida_Click" />

        </asp:Panel>
</asp:Content>