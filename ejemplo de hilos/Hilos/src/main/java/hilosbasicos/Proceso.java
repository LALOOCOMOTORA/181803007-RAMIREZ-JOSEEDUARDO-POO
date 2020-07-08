/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package hilosbasicos;

/**
 * 
 * @author jose eduardo ramirez
 */
import java.util.logging.Level;
import java.util.logging.Logger;

public class Proceso extends Thread
{
  String mensaje;
  public Proceso(String nombre)
  {
     super(nombre);  
  }
  @Override
  public void run()
  {
     for(int i=0;i<10;i++)
     {
         try {
             Thread.sleep(500);
             System.out.println(mensaje);
         } catch (InterruptedException ex) {
             Logger.getLogger(Proceso.class.getName()).log(Level.SEVERE, null, ex);
         }   
     }
     System.out.println("Este proceso ha terminado "+this.getName());
  }
  public void setMensaje(String msj)
  {
     this.mensaje = msj;  
  }
}