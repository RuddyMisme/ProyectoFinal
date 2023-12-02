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
        <div class="d-flex" >
            <div class="card col-sm-5" style="background: #c0a080;">
                <div class="card-body ">
                    <form action="Controlador?menu=Empleado" method="post" class="custom-form">
                        <div class="form-gruop ">
                            <label id="h1cli">Dni</label>
                            <input  style="background: #c0a080; border: none; color: white; font-size: 20px" type="text"  value="${empleado.getDni()}" name="txtDni" class="form-control"> 

                        </div>    
                        <div class="form-gruop ">
                            <label id="h1cli">Nombres</label>
                            <input  style="background: #c0a080; border: none; color: white; font-size: 20px" type="text" value="${empleado.getNom()}" name="txtNombres" class="form-control">
                        </div>    
                        <div class="form-gruop ">
                            <label id="h1cli">Telefono</label>
                            <input  style="background: #c0a080; border: none; color: white; font-size: 20px" type="text" value="${empleado.getTel()}" name="txtTel" class="form-control">
                        </div>    
                        <div class="form-gruop ">
                            <label id="h1cli">Estado</label>
                            <input  style="background: #c0a080; border: none; color: white; font-size: 20px" type="text" value="${empleado.getEstado()}" name="txtEstado" class="form-control">
                        </div>    
                        <div class="form-gruop ">
                            <label id="h1cli">Usuario</label>
                            <input  style="background: #c0a080; border: none; color: white; font-size: 20px" type="text" value="${empleado.getUser()}" name="txtUser" class="form-control">
                        </div>    
                        <div class="form-gruop ">
                            <label id="h1cli">Contraseña</label>
                            <input  style="background: #c0a080; border: none; color: white; font-size: 20px" type="text" value="${empleado.getContra()}" name="txtContra" class="form-control">
                        </div> 
                        <br>    
                        <button id="btncli"  type="submit" name="accion" value="Agregar" >Agregar</button>
                        <button  id="btncli" style="margin-left: 200px" type="submit" name="accion" value="Actualizar" >Actualizar</button>
                    </form>
                </div>
            </div>

                        <div class="col-sm-7" style="background: #c0a080;">
                <br>
                <table border="1"  id="tcli">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>DNI</th>
                            <th>NOMBRES</th>
                            <th>TELEFONO</th>
                            <th>ESTADO</th>
                            <th>USUARIO</th>
                            <th>CONTRASEÑA</th>
                            <th>ACCIONNES</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="em" items="${empleados}">
                            <tr>
                                <td>${em.getId()}</td>
                                <td>${em.getDni()}</td>
                                <td>${em.getNom()}</td>
                                <td>${em.getTel()}</td>
                                <td>${em.getEstado()}</td>
                                <td>${em.getUser()}</td>
                                <td>${em.getContra()}</td>
                                <td style="display: inline-flex; width:150px; text-align: center">
                                    <a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Delete&id=${em.getId()}">Eliminar</a>
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
