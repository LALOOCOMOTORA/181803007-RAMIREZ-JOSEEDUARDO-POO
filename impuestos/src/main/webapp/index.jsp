<%-- 
    Document   : index
    Created on : 26 may. 2020, 12:20:49
    Author     : acteck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>debo pagar impuesto?</title>
    </head>
    <body>
        <h1> verifica si debes de pagar impuestos  </h1>
         <%
                if(request.getParameter("edad")!=null){%>
                 
                  
                 <%
                     
                    int a=Integer.parseInt(request.getParameter("edad"));
                    int b=Integer.parseInt(request.getParameter("ingreso"));
                     if(a>16 && b>1000){
                     out.println ("usten  debe pagar impuestos");
                     }
                     else{
                     
                     out.println ("usten no debe pagar impuestos");
                     }
                %>
            
            <form>
                <input type= "hidden" name="Edad" />
                <input type ="submit" value="Regresar"/>
            </form>
                   <%}else{%>
                   <form>
                        <input type= "number"  placeholder="pon tu edad" name="edad" required />
                        <input type= "number"  placeholder="pon tus ingresos" name="ingreso" required />
                        <input type ="submit" value="Enviar"/>
                        
                        <h3>No has ingresado ningun valor </h3>
             </form>
 
            <%}
            %>
    </body>
</html>
