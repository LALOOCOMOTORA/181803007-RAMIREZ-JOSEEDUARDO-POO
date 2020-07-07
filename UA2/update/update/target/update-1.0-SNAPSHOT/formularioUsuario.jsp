<%-- 
    Document   : formularioUsuario
    Created on : 14 jun. 2020, 12:46:02
    Author     : jose eduardo ramirez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  method="POST" >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <title>formulario usuario</title>

    </head>
    <body>
        <div class="container">
            <h1>agregar usuario</h1>
            <form action="agregarUsuario.jsp" method="POST"> 

                <div class="form-row">
                    <div class="col">
                        <input type="text" class="form-control" placeholder="Nombre" name="Nombre" required >
                    </div>
                    <div class="col">
                        <input type="password" class="form-control" placeholder="contraseña" name="password" required>
                    </div>
                    <div class="col">
                        <input type="submit" class="btn btn-success btn-block" value="enviar">
                    </div> 
                </div>
            </form>

        </div>

    </body>
</html>
