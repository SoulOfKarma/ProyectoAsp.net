<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorLogin.aspx.cs" Inherits="CapaVista.PaginaDeErrores.ErrorLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" />
    <link href="../CSS/estilo.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="formVolver" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 text-center"><br /><br /><asp:Button class="btn btn-danger" ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" /></div>
        
            <div class="col-md-4"></div>
            </div>
    </div>
    </form>
</body>
</html>
