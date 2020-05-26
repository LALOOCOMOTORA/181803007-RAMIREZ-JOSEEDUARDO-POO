

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> CALCULAR EL VOLUMEN DE UNA ESFERA  </h1>
         <%
                if(request.getParameter("radio")!=null){%>
                 <h1> el volumen de la esfera es: </h1>
                  
                 <%
                     double r=Double.parseDouble(request.getParameter("radio"));
                     double v,pi=3.1416;
                     r=r*r*r;
                     v=(4.0/3)*pi*r;
                     out.println (v);
                %>
            
            <form>
                <input type= "hidden" name="Radio" />
                <input type ="submit" value="Regresar"/>
            </form>
                   <%}else{%>
                   <form>
                        <input type= "number" name="radio" required />
                        <input type ="submit" value="Enviar"/>
                        <h3>No has ingresado ningun radio </h3>
             </form>
 
            <%}
            %>
    </body>
</html>