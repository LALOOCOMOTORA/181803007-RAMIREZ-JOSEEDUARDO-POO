<%-- 
    Document   : index
    Created on : 1 jun. 2020, 9:38:06
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html
    <%
        Connection conexion = null;
        Statement stmt = null;
        ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuario", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuario");
        while (rs.next()) {
            out.println(rs.getString(1));
            out.println(rs.getString(2));
        }
    } catch (Exception e) {
        out.println("error" + e);
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
