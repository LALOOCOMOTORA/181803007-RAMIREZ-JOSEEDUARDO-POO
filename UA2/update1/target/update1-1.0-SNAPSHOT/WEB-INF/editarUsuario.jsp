<%-- 
    Document   : editarUsuario
    Created on : 19 jun. 2020, 20:50:26
    Author     : jose eduardo ramirez
--%>

<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!DOCTYPE html>

 <%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("UPDATE usuario SET usuario=? WHERE id_usuario = ?");
        stmt.setString(1,request.getParameter("usuario"));
            stmt.setInt(2,Integer.parseInt(request.getParameter("id_usuario"))); 
       if (stmt.executeUpdate()>0) {
%>
                <div class="alert alert-success" role="alert">
                    <h2>Se realizó exitosamente la modificacion a <%out.println(request.getParameter("usuario"));%> </h2>
                </div>
                <%}
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar un nuevo usuario</title>
    </head>
    <body>
        <form action="index.jsp" methode="POST" class="form" >
            <div class="form-row">
                <div class="col">
                    <input type="submit" class="btn btn-primary btn-block" value="ver registro" />
                </div>
            </div>
        </form>
    </body>
</html>
<%
    } catch (Exception e) {%>
    <form action="index.jsp" methode="POST" class="form" >
        <div class="alert alert-danger" role="alert">
                    <h2 align="center">La modificación no ha sido existosa</h2>
                    <input type="submit" class="btn btn-success btn-block" value="Regresar" />
        </div>
    </form>
    <%}
%>          