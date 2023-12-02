
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Agbalumo&family=Ephesis&family=Lobster&family=Pacifico&display=swap" rel="stylesheet">
        
        <link href="estilo.css" rel="stylesheet" type="text/css"/>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>


    <nav class="navbar navbar-expand-lg navbar-light bg-warning-dark  "data-bs-theme="dark" id="navtotal">
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">

                <li class="nav-item">
                    <a id="navletras" style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Producto&accion=Listar" target="myFrame">Producto</a>
                </li>
                <li class="nav-item">
                    <a id="navletras" style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleado</a>
                </li>
                <li class="nav-item">
                    <a id="navletras" style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Cliente&accion=Listar" target="myFrame">Cliente</a>
                </li>
                <li class="nav-item">
                    <a id="navletras" style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=NuevaVenta&accion=default" target="myFrame">Nueva venta</a>
                </li>

            </ul>
        </div>


        <div class="dropdown">
            <button id="navletras" style="border: none" class="btn btn-outline-light dropdown-toggle" href="#" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                ${usuario.getNom()}
            </button>
            <div class="dropdown-menu text-center" style="background-color: darkgoldenrod; ">
                <a class="dropdown-item" href="#">
                    <img src="img/user.png" alt="60" width="60"/>
                </a>
                <a id="usuletras" class="dropdown-item" href="#">${usuario.getUser()}</a>
                <a id="usuletras" class="dropdown-item" href="#">${usuario.getNom()}@gmail.com</a>
                <div class="dropdown-divider"></div>
                <form action="Validar" method="POST">
                    <button id="usuletras" name="accion" class="dropdown-item" href="#">Salir</button>
                </form> 
            </div>        
        </div> 
    </nav>
    <div class="m-4" style="height: 550px; background-image: url('img/menu.jpg');background-size: cover;">
        <iframe id="iframe" name="myFrame" style="height: 100%; width: 100%; border: none;"></iframe>
    </div>

    <body id="bodypri">
    </body>             

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</html>