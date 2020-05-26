

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>m.c.m</title>
    </head>
    <body>
        <h1>Minimo como un multiplo de tres numeros</h1>
        <%
            if (request.getParameter("numero") != null) { %>
        <h3> el m.c.m  es : </h3>
        <%
            
            int numero = Integer.parseInt(request.getParameter("numero"));
            int numero2 = Integer.parseInt(request.getParameter("numero2"));
            int numero3 = Integer.parseInt(request.getParameter("numero3"));
            int c,i;
              c= numero;
   

         if ( numero2> c ){
             c = numero2;
         }
             
  
         if ( numero3 > c ){
             c=numero3;
         }
         i=c;
         
         while ((i % numero != 0) || (i % numero2 != 0) || (i % numero3 != 0)){
             i++;
         }
             
   
            
            out.println(i);
        %>
        <form>
                <input type= "hidden" name=" Numero" />
                <input type ="submit" value="Regresar"/>
            </form>

        <%} else { %>
        <form>
            <input type="number" placeholder="Valor 1" name="numero" required/>
            <input type="number" placeholder="Valor 2" name="numero2" required/>
            <input type="number" placeholder="Valor 3" name="numero3" required/>
            <input type="submit" value="Enviar"/>

        </form>
        <h3>No has ingresado ningun valor</h3>  
        <%}
        %>
    </body>
</html>
