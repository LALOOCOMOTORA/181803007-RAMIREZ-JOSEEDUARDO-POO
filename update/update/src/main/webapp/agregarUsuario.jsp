<%-- 
    Document   : agregarUsuario
    Created on : 14 jun. 2020, 13:23:46
    Author     : jose eduardo ramirez
--%>


<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.*"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"  method="POST">


<%
    
       Connection conexion=null;
       PreparedStatement stmt = null;
            ResultSet rs = null;
    try{
        
        Class.forName("com.mysql.jdbc.Driver");
         String url= "jdbc:mysql://localhost/usuarios";
         conexion=DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt=conexion.prepareStatement("INSERT INTO usuario SET Nombre=?,password=?");
            stmt.setString(1, request.getParameter("Nombre"));
            stmt.setString(2, getMD5(request.getParameter("password")));
            
         
           stmt.executeUpdate();
            %><div class="alert alert-success" role="alert">
               se agrego exitosamente a la base de datos el registro:<%out.println(request.getParameter("Nombre")); out.println(", "+getMD5(request.getParameter("password")));%>
</div>
    <%
    }catch(Exception e){
%><div class="alert alert-danger" role="alert"> no se podo agregar el registro por :<%
       out.println("error "+ e.getMessage());
       %></div><%   
    }
         
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>agregarUsuario</title>
    </head>
    <body  method="POST">
   <td><a class="btn btn-success btn-block" href="index.jsp"  method="POST">Ver Registro</a></td>
    </body>
</html>
<%!
   public static String getMD5(String input) {
 try {
 MessageDigest md = MessageDigest.getInstance("MD5");
 byte[] messageDigest = md.digest(input.getBytes());
 BigInteger number = new BigInteger(1, messageDigest);
 String hashtext = number.toString(16);

 while (hashtext.length() < 32) {
 hashtext = "0" + hashtext;
 }
 return hashtext;
 }
 catch (NoSuchAlgorithmException e) {
 throw new RuntimeException(e);
 }
 }
%>