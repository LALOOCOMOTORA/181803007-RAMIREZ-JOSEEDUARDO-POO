


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    
</head>
<body>
    <h1>la tarea como debio ser </h1><br>

<%
    if (request.getParameter("numero") != null) {%>
</hl> el ciclo del valor ingresado es el sigiente</hl> <br>
    <%

        int numero = Integer.parseInt(request.getParameter("numero"));
        for (int i = 0; i <= numero; i++) {

            out.println(i + "\n");
        } %>
            
            <form>
                <input type= "hidden" name="Numero" />
                <input type ="submit" value="Regresar"/>
            </form>
        
<%} else {%> 
<form >
   
    <input type="number" placeholder="pon un numero " name="numero" value="prueba"/> <br>
    <input type= "submit" value="enviar"/><br>
</form> 
</h3> no se ha ingresado un valor </h3> <br>


<%}
%>

</body>
</html>
