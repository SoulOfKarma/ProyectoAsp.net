<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="CapaVista.LoginUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" />
    <link href="CSS/estilo.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <br /><br /><br /><br /><br /><br /><br /><br />
  <div class="form-group">
    <label for="emailUser">Correo</label>
    <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Ingrese su correo"/>
  </div>
  <div class="form-group">
    <label for="passUser">Contraseña</label>
    <input type="password" class="form-control" id="pass" placeholder="Contraseña"/>
  </div>
                         <div class="col-md-4"></div>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-4"><br />

   <asp:Button class="btn btn-primary" ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
                            </div></div>
                            <div class="col-md-4 text-center"></div>
  
                        <div class="col-md-4"></div>
                    </div>
                </div>
            </div>
       
</form>
    
</body>
</html>
