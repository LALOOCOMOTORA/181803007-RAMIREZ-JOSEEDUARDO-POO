

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>calcular</title>
    </head>
    <body>
        <h1> pun lo que se te pide</h1>
    </body>
    <form>
        <input type= "number" placeholder= "ingresa el cateto opuesto" name="catetoa"  /><br>
                       <input type= "number" placeholder= "ingresa el cateto ayacente" name="catetob"  /><br>
                       <input type= "number" placeholder= "ingresa la hipotenusa" name="hipo"  /><br>
                        <input type ="submit" value="Enviar"/>
    </form>
    <body>
        
        
        <%
                    
                     double catetoa=Double.parseDouble(request.getParameter("catetoa"));
                     double catetob=Double.parseDouble(request.getParameter("ca tetob"));
                     double hipo=Double.parseDouble(request.getParameter("hipo")); 
                     if(hipo==0){
                         hipo=(catetob*catetob)+(catetoa*catetoa);        
                     
                 
                     out.println ("la hipotenusa es:"+hipo);
                     }
             
                 
                  
               
                     
                    
                
                %>
             
                  
                   
 
            <%}
            %>
    </body>
</html>
