<%-- 
    Document   : provedor
    Created on : 4 jun. 2020, 17:55:01
    Author     : jose eduardo ramirez
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Base Datos</title>
    </head>
    <body bgcolor="F2F5CC ">
        <iframe id='AmazonMusicEmbedB07JNKK846' src='https://music.amazon.com.mx/embed/B07JNKK846/?id=Hvr1dyewmj&marketplaceId=ART4WZ8MWBX2Y&musicTerritory=MX' width='30%' height='50px' style='border:1px solid rgba(0, 0, 0, 0.12);max-width:'></iframe>
        <%
            Connection conexion;
            ResultSet rs = null;
            
            try{
            String url= "jdbc:mysql://localhost/provedores";
            String Driver="com.mysql.jdbc.Driver";
            String user="root";
            String clave="";
            Class.forName(Driver);
            conexion=DriverManager.getConnection(url,user,clave);
            
            PreparedStatement ps;
            ps=conexion.prepareStatement("Select * from provedores");
            rs=ps.executeQuery();
            }
            catch (Exception e) {
            out.println("error" + e);
        }
        %>
        <center>

        <div CSS="center"></div><img  src="https://thumbs.gfycat.com/DirectConfusedGuineafowl-size_restricted.gif"></div>
        </center>
        
        <div class="container">        
        <h1 align="center">TABLA PROVEDORES </h1>
        <center>

        <img  align="center" src="https://yologistica.com/wp-content/uploads/2018/11/proveedor-1080x675.jpg">
        </center>

        </div>
      

        <table class="table">
  <thead class="thead-dark">
    <tr>
    <th class="text-center" width="200" bgcolor="4EE3FF">id</th>
    <th class="text-center" width="200" bgcolor="4EE3FF">Empresa</th>
    <th class="text-center"  width="200" bgcolor="4EE3FF">numero</th>
    <th class="text-center"  width="200" bgcolor="4EE3FF">producto</th>
    <th class="text-center"  width="200" bgcolor="4EE3FF">id_estado de la empresa</th>
    <tr/>
    <%
        while (rs.next()) {
            
    %>    
    <tr>
        <td class="text-center"><%=rs.getInt("id") %> </td>
        <td class="text-center"><%=rs.getString("Empresa") %> </td>
        <td class="text-center"><%=rs.getLong("telefono") %> </td>
        <td class="text-center"><%=rs.getString("producto") %> </td>
        <td><%=rs.getString("id_estado") %> </td>
     <tr/>   
    <%}%>

</table>

    </head>
    <body>
         <%
            
            
            
            try{
            String url= "jdbc:mysql://localhost/provedores";
            String Driver="com.mysql.jdbc.Driver";
            String user="root";
            String clave="";
            Class.forName(Driver);
            conexion=DriverManager.getConnection(url,user,clave);
            
            PreparedStatement ps;
            ps=conexion.prepareStatement("Select * from cat_estados");
            rs=ps.executeQuery();
            }
            catch (Exception e) {
            out.println("error" + e);
        }
        %>
        <div class="container">        
        <h1 align="center">TABLA ESTADOS </h1>
        <img  align="center" src="https://i.pinimg.com/originals/ce/58/fb/ce58fb8b5ad147c9c48aa7b6549f68f3.gif">
        </div>
        <table border="5" align="center"  cellspacing="0">
    <tr>
    <th class="text-center" width="200" bgcolor="4EE3FF">id </th>
    <th class="text-center" width="200" bgcolor="4EE3FF">estado </th>
    
    <tr/>
    <%
        while (rs.next()) {
    %>    
    <tr>
        <td class="text-center"><%=rs.getInt("id")%> </td>

        <td class="text-center"><%=rs.getString("nombre")%> </td>

    <tr/>   
    <%}%>

</table>
    </body>
</html>