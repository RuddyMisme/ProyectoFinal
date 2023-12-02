

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Ephesis&family=Lobster&family=Pacifico&display=swap" rel="stylesheet">
        <link href="estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body class="bodyindex">


        <div class="container mt-4 col-lg-4">

            <div id="formindex" class="card col-sm-15">

                <div class="card-body ">
                    <form   class="form-gruop " action="Validar" method="post">
                        <div class="form-gruop text-center">
                            <h3 id="idlogin">LOGIN</h3>
                            <img src="img/l.jpg" alt="70" width="170"> 
                            <label id="labelbien">Bienvenidos a QUESTO CAFE</label>

                        </div> 
                        <div class="form-gruop">
                            <label id="labelindex" >Usuario</label>
                            <input style=" color: black; font-size: 20px"" type="texto" name="txtuser" class="form-control"> 

                        </div> 
                        <div class="form-gruop">
                            <label id="labelindex" >Password</label>
                            <input style=" color: black; font-size: 20px"" type="password" name="txtpass" class="form-control"> 
                        </div> 
                        <br>
                        <button id="btningresar" style="background: #45250e; border: none; margin-left: 32%; color: white" href="Home.jsp" type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block">Ingresar</button>

                    </form>
                </div>

            </div>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    </body>
</html>
