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
public class HilosBasicos {
     public static void main(String[] args) {
      Proceso hilo1 = new Proceso("Hilo 1");
      Proceso hilo2 = new Proceso("Hilo 2");
      hilo1.setMensaje("Este es el mensaje del hilo 1");
      hilo2.setMensaje("Este es el mensaje del hilo 2");

      hilo1.start();
      hilo2.start();
    }

    private static void segundos(double d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
