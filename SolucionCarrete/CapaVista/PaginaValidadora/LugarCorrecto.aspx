<%@ Page Title="" Language="C#" MasterPageFile="~/Banner.Master" AutoEventWireup="true" CodeBehind="LugarCorrecto.aspx.cs" Inherits="CapaVista.PaginaValidadora.LugarCorrecto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBanner" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-12">
                <asp:Label ID="lblVolver" runat="server" Text="Para Volver Haga click en el boton de abajo :"></asp:Label><br />

                <asp:Button ID="btnVolver" runat="server" Text="Volver" class="btn-dark" OnClick="btnVolver_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
