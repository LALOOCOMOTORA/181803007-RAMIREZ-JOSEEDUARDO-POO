
public class banco {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        tarjeta purpu=new tarjeta();
        purpu.nombre="tarjeta morada";
        purpu.puntos=9;
        
        tarjeta estudiante =new tarjeta();
         estudiante.nombre="tarjeta estudiante";
         estudiante.puntos=3;
        tarjeta buho=new tarjeta();
        buho.nombre="tarjeta buho especial";
        buho.puntos=12;
        tarjeta docente=new tarjeta();
        docente.nombre="tarjeta docente";
        docente.puntos=2;
        tarjeta oro=new tarjeta();
        oro.nombre="tarjeta buho oro";
        oro.puntos=15;
        System.out.println(purpu.toString());
        
        
        
        
    }
    
}
