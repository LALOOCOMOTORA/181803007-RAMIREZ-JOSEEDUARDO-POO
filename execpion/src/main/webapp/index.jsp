<%-- 
    Document   : index
    Created on : 6 jun. 2020, 20:58:06
    Author     : jose eduardo ramirez
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
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
} catch(SQLSyntaxErrorException e) {
  
        %>   <hi><%out.println("La base de datos no existe " );%></h1><%
    

     }
try{
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usurio5");
        while (rs.next()) {
            out.println(rs.getString(1));
            out.println(rs.getString(2));
        }
   

    
} catch(SQLSyntaxErrorException e) {
  
        %>   <hi><%out.println("La tabla no existe");%></h1><%
    

     } catch (Exception e) {
%>   <hi><%out.println("error =" + e.getLocalizedMessage());%></h1><%
}

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <hi> </hi>
    </head>
    <body>
        
    </body>
</html>