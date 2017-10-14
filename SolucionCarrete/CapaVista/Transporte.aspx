<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="Transporte.aspx.cs" Inherits="CapaVista.Transporte" %>


           
       
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
    
    <br /><br /> <asp:Label ID="lblFecha" runat="server" Text="Seleccione Fecha Del Evento :"></asp:Label>
            <asp:Calendar ID="CLFecha" runat="server"></asp:Calendar><br /><br />
            <asp:Button ID="btnFecha" runat="server" Text="Enviar Fecha" OnClick="btnFecha_Click" />
</asp:Content>
