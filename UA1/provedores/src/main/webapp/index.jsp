<%-- 
    Document   : provedor
    Created on : 4 jun. 2020, 17:55:01
    Author     : jose eduardo ramirez
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Base Datos</title>
    </head>
    <body bgcolor="F2F5CC ">
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
        <div class="container"> <h1 align="center">TABLA PORVEDORES</h1> </div
      

        <table border="5" align="center" bordercolor="A8F00D" cellspacing="0">
    <tr>
    <th class="text-center" width="200" bgcolor="4EE3FF">id </th>
    <th class="text-center" width="200" bgcolor="4EE3FF">Empresa </th>
    <th class="text-center"  width="200" bgcolor="4EE3FF">numero </th>
    <th class="text-center"  width="200" bgcolor="4EE3FF">producto </th>
    <th class="text-center"  width="200" bgcolor="4EE3FF">id_estado </th>
    <tr/>
    <%
        while (rs.next()) {
            
    %>    
    <tr>
        <td class="text-center"><%=rs.getInt("id") %> </td>
        <td class="text-center"><%=rs.getString("Empresa") %> </td>
        <td class="text-center"><%=rs.getLong("telefono") %> </td>
        <td class="text-center"><%=rs.getString("empresa") %> </td>
        <td><%=rs.getString("id_estado") %> </td>
     <tr/>   
    <%}%>

</table>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <table border="5" align="center" bordercolor="A8F00D" cellspacing="0">
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
