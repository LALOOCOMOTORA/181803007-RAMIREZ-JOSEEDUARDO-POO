<%@page import="Dao.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Dao.UsuarioBD"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html
   
<%
      List<Usuario> usuarios=new UsuarioBD().listadoUsuarios();


%>
<html>
    <head  method="POST">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        
        <title>CRUD</title>
        
        
    <h1>los registros en la base de datos son: </h1>
    <div class="container"  >
       
        <table class="table table-hover">
            
            <thead class="thead-dark">
  <tr>
      <td colspan="2"><h2>Usuarios</h2> </td>
      <td></td>
      <td> </td>
        <td></td>
          <td></td>
          <td></td>
        <td><a class="btn btn-success btn-block" href="formularioUsuario.jsp"  method="POST" >Agregar Usuario </a></td>
       </tr>
               
            <tr
               
            
                  <br><th  class="text-center">#</th>
                <th  class="text-center">Nombre</th>
                <th  class="text-center">Contraseña</th>
                <th  class="text-center">Edad</th>
                <th>
                   
                </th>
                
               <th>
                   
                </th>
    <th  class="text-center" >Opciones</th>
      <th>
                   
                </th>      
    <th>
                   
                </th>
            </tr>
            
            </thead>
            <tbody>
                <%  for(Usuario usuario:usuarios){ %>
            <tr>
            
        <th scope="row"><%=usuario.getId_usuario() %></th> 
        <td><%=usuario.getUsuario() %> </td>
        <td><%=usuario.getPassword() %> </td>
        <th><%=usuario.getEdad() %></th>  
        <td><a class=" btn btn-warning btn-block" href="formularioUsuario.jsp?id=<%=usuario.getId_usuario()%>">Editar usuario</a></td>
        <td><a class="btn btn-warning btn-block" href="formularioPassword.jsp?id=<%out.print(usuario.getId_usuario());%>">Editar Password</a></td>
       <td><a class="btn btn-danger btn-block"  href="eliminarUsuario.jsp?id=<%out.print(usuario.getId_usuario());%>"> Eliminar el usuario </a> </td>
             <td><a class="btn btn-danger btn-block"  href="eliminarUsuario3.jsp?id=<%out.print(usuario.getId_usuario());%>"> Eliminar el usuario directo </a> </td>
            
      
       
            </tr>
            <%}%>
            </tbody>
        
     </table>   
    </div>     
    </head>
    <body>
        
    </body>
</html>
