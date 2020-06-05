

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>potencia</title>
    </head>
    <body>
        <h1>Calcular la potencia </h1>
        <%
            if (request.getParameter("numero") != null) { %>
        <h3> la potencia  es : </h3>
        <%
            
            int numero = Integer.parseInt(request.getParameter("numero"));
            int potencia = Integer.parseInt(request.getParameter("potencia"));
            int a=1;
            for (int i = 0; i < potencia; i++) {
                a = a * numero;
            }
            out.println(a);
        %>
        <form>
                <input type= "hidden" name=" Numero" />
                <input type ="submit" value="Regresar"/>
            </form>

        <%} else { %>
        <form>
            <input type="number" placeholder="Valor de x" name="numero" required/>
            <input type="number" placeholder="Valor de la potencia" name="potencia" required/>
            <input type="submit" value="Enviar"/>

        </form>
        <h3>No has ingresado ningun valor</h3>  
        <%}
        %>
    </body>
                  
</html>
