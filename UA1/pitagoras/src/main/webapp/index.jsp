<%-- 
    Document   : pitagoras
    Created on : 26 may. 2020, 11:14:03
    Author     : acteck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>calcular</title>
        
    </head>
    <form>
                       <input type= "number" placeholder= "ingresa el cateto opuesto" name="catetoa"  /><br>
                       <input type= "number" placeholder= "ingresa el cateto ayacente" name="catetob"  /><br>
                       <input type= "number" placeholder= "ingresa la hipotenusa" name="hipo"  /><br>
                        <input type ="submit" value="Enviar"/>
                        <h3>No has ingresado ningun radio </h3>
             </form>
    <body>
        <h1>calcular lado faltante</h1>
        <%
                    
                     double catetoa=Double.parseDouble(request.getParameter("catetoa"));
                     double catetob=Double.parseDouble(request.getParameter("catetob"));
                     double hipo=Double.parseDouble(request.getParameter("hipo")); 
                     if(hipo==0){
                         hipo=(catetob*catetob)+(catetoa*catetoa);        
                     hipo=Math.sqrt(hipo);
                 
                     out.println ("la hipotenusa es:"+hipo);
                     }
             
                 
                  
               
                     
                    
                
                %>
             
                  
                   
 
            <%}
            %>
    </body>
</html>
