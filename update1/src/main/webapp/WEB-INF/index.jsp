
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html
   
<%
       Connection conexion;
            ResultSet rs = null;
            
            try{
            String url= "jdbc:mysql://localhost/usuarios";
            String Driver="com.mysql.jdbc.Driver";
            String user="root";
            String clave="";
            Class.forName(Driver);
            conexion=DriverManager.getConnection(url,user,clave);
            
            PreparedStatement stmt;
            stmt=conexion.prepareStatement("Select * from usuario");
            rs=stmt.executeQuery();
            }
            catch (Exception e) {
            out.println("error" + e);
        }

    



%>
<html>
    <head  method="POST">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        
        <title>CRUD</title>
        
        
    <h1>los registros en la base de datos son: </h1>
    <div class="container"  method="POST">
       
        <table class="table table-hover">
            
            <thead class="thead-dark">
  <tr>
      <td colspan="2"><h2>Usuarios</h2> </td>
        <td><a class="btn btn-success btn-block" href="formularioUsuario.jsp"  method="POST" >Agregar Usuario </a></td>
       </tr>
               
            <tr
               
            
                  <br><th>Nombre</th>
    <th>Contraseña</th>
            </tr>
                
            </thead>
            <body>
                <%  while (rs.next()) { %>
            <tr>
            
        <td class="text-center"><%=rs.getString("Nombre") %> </td>
        <td class="text-center"><%=rs.getString("password") %> </td>
      
       
            </tr>
            <%}%>
            </body>
        
     </table>   
    </div>     
    </head>
    <body>
        
    </body>
</html>
