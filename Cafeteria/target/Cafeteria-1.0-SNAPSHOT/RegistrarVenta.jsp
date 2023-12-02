

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
            }
            @media print{
                .no, .btn
                {
                    display: none;
                }                    
                
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
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-5 " style="background: #c0a080">
                <div class="card-body">
                    <form action="Controlador?menu=NuevaVenta" method="post" class="custom-form">
                        <div class="card-body">
                            <div class="form-group">
                                <label id="h1cli">Datos del Cliente</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input style="background: #c0a080; border: none; width: 100px; color: white; font-size: 20px" type="text" name="codigocliente" value="${cl.getId()}" class="form-control " placeholder="Codigo">
                                    <button id="btncli" style=" background: #212529; color: #cbbaba" type="submit" name="accion" value="BuscarCliente" >Buscar</button>
                                </div>
                                <div class="col-sm-6 d-flex">
                                    <input  style="background: #c0a080; border: none; color: white; font-size: 20px; width: 230px" type="text" name="nombrescliente" value="${cl.getNom()}" placeholder="Datos Cliente" class="form-control col-sm-6">

                                </div>
                            </div>
                            <!--DATOS DE PRODUCTO-->
                            <div class="no"> 
                                <div class="form-group">
                                    <label id="h1cli">Datos Producto</label>
                                </div>
                                <div class="form-group d-flex">
                                    <div class="col-sm-6 d-flex">
                                        <input style="background: #c0a080; border: none; width: 100px; color: white; font-size: 20px" type="text" name="codigoproducto" value="${producto.getId()}" class="form-control " placeholder="Codigo">
                                        <button id="btncli" style=" background: #212529; color: #cbbaba" type="submit" name="accion" value="BuscarProducto" >Buscar</button>
                                    </div>
                                    <div class="col-sm-6 d-flex">
                                        <input  style="background: #c0a080; border: none; color: white; font-size: 20px;width: 230px" type="text" name="nomproducto" value="${producto.getNom()}" placeholder="Datos Producto" class="form-control col-sm-6">

                                    </div>
                                </div>

                                <div class="form-group d-flex">
                                    <div class="col-sm-6 d-flex">
                                        <input style="background: #c0a080; border: none; width: 100px; height: 50px; color: white; font-size: 20px" type="text" name="precio" value="${producto.getPrecio()}"  class="form-control ">
                                    </div>
                                    <div class="col-sm-3">
                                        <input style="background: #c0a080; border: none; height: 50px; color: white; font-size: 20px" type="number" value="1" name="cant" placeholder="" class="form-control ">
                                    </div>
                                    <div class="col-sm-3">
                                        <input style="background: #c0a080; border: none; height: 50px; color: white; font-size: 20px" type="text" name="stock" value="${producto.getStock()}" placeholder="Stock" class="form-control ">
                                    </div>
                                </div>
                                <div  class="form-group d-flex" >
                                    <!--DATOS DE AGREGAR-->
                                    <div class="form-group d-flex">
                                        <div class="col-sm d-flex">

                                            <button id="btncli" type="submit" name="accion" value="Agregar" class="btn btn-outline-info">Agregar</button>
                                        </div>
                                    </div>
                                    <div class="form-group d-flex">
                                        <div class="col-sm d-flex">

                                            <a id="btncli" style="margin-left: 100px; width: 200px" href="Controlador?menu=NuevaVenta&accion=default" class="btn btn-outline-info">Nuevo Pedido</a>
                                        </div>
                                    </div>
                                </div> 
                            </div>



                        </div>
                    </form>
                </div>

            </div>

            <div class="col-sm-7"  style="background: #c0a080">
                    <br>
                <div  class="custom-form">
                    <div class="card-body">
                        <div class="col-sm-5 ml-auto" >
                            <label id="h1cli">Nro de Serie</label>
                            <input  style="background: #c0a080; border: none; color: white; font-size: 20px" type="text" name="NroSerie" value="${nserie}" class="form-control">
                        </div>
                        <br>
                         <table border="1"  id="tcli">
                            <thead>
                                <tr>
                                    <th>Nro</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>SubTotal</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                    <tr>
                                        <td>${list.getItem()}</td>
                                        <td>${list.getIdproducto()}</td>
                                        <td>${list.getDescripcionP()}</td>
                                        <td>${list.getPrecio()}</td>
                                        <td>${list.getCantidad()}</td>
                                        <td>${list.getSubtotal()}</td>

                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                        <br>
                    <div class="card-footer d-flex">
                        <div class="col-sm-6">
                            <a  id="btncli" href="Controlador?menu=NuevaVenta&accion=GenerarVenta" onclick="print()" class="btn btn-success">Genera Venta</a>
                            <a  id="btncli" type="button" href="Controlador?menu=NuevaVenta&accion=GenerarVenta" name="accion" value="Cancelar" class="btn btn-danger">Cancelar</a>
                        </div>
                        <div class="d-flex col-sm-4 ml-auto">
                            <input style="background: #f14858; border: none" type="text" name="txtTotal" value="${totalpagar}Bs." class="form-control text-center ">
                        </div>
                    </div>

                </div>

            </div>

        </div>






    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>
