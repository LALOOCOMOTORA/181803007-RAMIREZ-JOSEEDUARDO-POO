<%-- 
    Document   : index
    Created on : 20 may. 2020, 9:15:54
    Author     : acteck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MI primer documento</title>
    </head>
    <body>
        <h1>Mi primer formulario</h1>
        <p>este es mi primer formulario en donde conocera la diferencia entre POST<b> y GET</b></p>
        <form method="POST">
            <input type= "text" name="minombre" /><br>
            <input type= "password" name="contra" /><br>
            <input type= "date" name="fechanacimiento" /><br>
        <input type= "submit" value="enviar"/><br>
        
        </form>
        <h1> LOS DATOS INGRESADOS SON :</h1> 
        <% out.println(request.getParameter("minombre"));
           out.println(request.getParameter("contra"));
           out.println(request.getParameter("fechanacimiento"));
        %>
    </body>
</html>
