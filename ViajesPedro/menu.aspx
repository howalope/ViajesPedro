<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="ViajesPedro.menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menú</title>
    <link rel="stylesheet" type="text/css" href="css/menuEstilos.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li><a href="#inicio">Inicio</a></li>
                <li><a href="#news">Noticias del Mundo</a></li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">Catálogo </a>
                    <div class="dropdown-content">
                        <a href="CatalogoJugador.aspx">Personajes</a>
                        <a href="#">Mundos</a>
                        <a href="#">Portales</a>
                    </div>
                </li>
                <li>
                    <br />
                </li>
            </ul>
            <p>
                &nbsp;</p>
            <p style="text-align: right">
                Bienvenido:
                <asp:Label ID="lpersonje" runat="server"></asp:Label>
            </p>
        </div>
    </form>

    <button class="button button1">Ingresar Personaje</button>
    <button class="button button2">Eliminar Personaje</button>
    <button class="button button3">Modificar Personaje</button>

</body>
 
</html>
