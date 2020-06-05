

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> El programa que debio ser y no fue (Sin TRY, SIN JAVASCRIPT) </h1>
         <%
                if(request.getParameter("numero")!=null){%>
                 <h1> el ciclo del numero ingresado es: </h1>
                  
                 <%
                     int numero=Integer.parseInt(request.getParameter("numero"));
                for (int i=0; i<=numero; i++){
                     out.println(i);
                   }%>
            
            <form>
                <input type= "hidden" name="Numero" />
                <input type ="submit" value="Regresar"/>
            </form>
                   <%}else{%>
                   <form>
                        <input type= "number" name="numero" required />
                        <input type ="submit" value="Enviar"/>
                        <h3>No has ingresado ningun numero </h3>
             </form>
 
            <%}
            %>
    </body>
</html>



