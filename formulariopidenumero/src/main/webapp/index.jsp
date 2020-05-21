


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>ciclo </title>
    
    </head>
    <body>
         <form method="GET">
        <input type="int" placeholder="pon un nuemro " name="numero" pattern="^[0-999]+"/> <br>
    <input type= "submit" value="enviar"/><br>
     </form>
         <h1> LOS NUMEROS  SON :</h1>
            <%     
                try {
                      int a = Integer.parseInt(request.getParameter("numero"));
                      
                          for ( int i=0;i<=a;i++){
           
                out.println("\n"+i);
            }
  
                    }
                catch(NumberFormatException nfe) {
	                out.println("");
                    }
            %>   
       
        
       
        
        
         
       
    </body>

