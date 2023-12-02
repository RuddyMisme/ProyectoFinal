<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Agbalumo&family=Ephesis&family=Lobster&family=Pacifico&display=swap" rel="stylesheet">
        <link href="estilo.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body {
                background: #c0a080;
                /* Otras reglas de estilo si es necesario */
            }
            #tcli td {
                color: #343a40;
                width: 5rem;
                height: 4rem;
                border-bottom: solid  #c0a080 4px; 
                text-align: center;
                font-family: 'Pacifico', cursive;
                color: #343a40;
                font-size: 20px;
            }
            #tcli th{
                font-family: 'Agbalumo', cursive;
                color: #f9ed8a;
                width: 5rem;
                height: 4rem;
                font-size: 20px;
                border-bottom: solid #c0a080 4px;
            }

        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-5" style="background: #c0a080;">
                <div class="card-body">
                    <form action="Controlador?menu=Cliente" method="post" class="custom-form">
                        <div class="form-group">
                            <label id="h1cli">Dni</label>
                            <input  style="background: #c0a080; border: none; color: white; font-size: 20px" type="text" value="${cliente.getDni()}" name="txtDni" class="form-control">
                        </div>

                        <div class="form-group">
                            <label id="h1cli">Nombres</label>
                            <input style="background: #c0a080; border: none; color: white; font-size: 20px" type="text" value="${cliente.getNom()}" name="txtNombres" class="form-control">
                        </div>

                        <div class="form-group">
                            <label id="h1cli">Direccion</label>
                            <input style="background: #c0a080; border: none; color: white; font-size: 20px" type="text" value="${cliente.getDir()}" name="txtDireccion" class="form-control">
                        </div>

                        <div class="form-group">
                            <label id="h1cli">Estado</label>
                            <input style="background: #c0a080; border: none; color: white; font-size: 20px" type="text" value="${cliente.getEstado()}" name="txtEstado" class="form-control">
                        </div>

                        <button id="btncli"  type="submit" name="accion" value="Agregar" >Agregar</button>
                        <button  id="btncli" style="margin-left: 200px" type="submit" name="accion" value="Actualizar" >Actualizar</button>

                    </form>

                </div>
            </div>

            <div class="col-sm-7">
                <br>
                <table border="1"  id="tcli">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>DNI</th>
                            <th>NOMBRES</th>
                            <th>DIRECCION</th>
                            <th>ESTADO</th>
                            <th>ACCIONES</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="cl" items="${clientes}">
                            <tr>
                                <td>${cl.getId()}</td>
                                <td>${cl.getDni()}</td>
                                <td>${cl.getNom()}</td>
                                <td>${cl.getDir()}</td>
                                <td>${cl.getEstado()}</td>
                                <td  style="display: inline-flex; width:150px; text-align: center" >
                                    <a id="ac" class="btn btn-warning" href="Controlador?menu=Cliente&accion=Editar&id=${cl.getId()}">Editar</a>
                                    <a  id="ac" class="btn btn-danger" href="Controlador?menu=Cliente&accion=Delete&id=${cl.getId()}" >Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    </body>
</html>
