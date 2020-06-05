<%-- 
    Document   : solicita
    Created on : 27 may. 2020, 8:28:08
    Author     : acteck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% int numero = Integer.parseInt(request.getParameter("numero"));
    out.println(numero);
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> ░░░░░░░░░░░░░░░░░░░░░░░░░░</h1>
        <h1> ░█▀▀░█▀█░█▀░▀░█░░▀░▀█▀░█▀█░</h1>
        <h1> ░█▀░░█▀█░█░░█░█░░█░░█░░█░█░</h1>
        <h1> ░▀░░░▀░▀░▀▀░▀░▀▀░▀░░▀░░▀▀▀░</h1>
        <h1> ░░░░░░░░░░░░░░░░░░░░░░░░░░░</h1>
        <h1>
            ingresa un total de: <%out.println(numero); %>
        </h1>
        <form>
            <%
                
                for (int i = 0; i < numero; i++) {%>
                
                <input type="number" name="valor"  required  /> <%
                       
                }
               

            %>
            <input type="hidden" value="<%out.println(numero);%>" name= "numero"   />
             <input type="submit" value="envianding dato" />
             
                   
                
             
        </form>
    </body>
</html>
