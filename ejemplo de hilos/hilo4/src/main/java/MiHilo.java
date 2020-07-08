/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * 
 * @author jose eduardo ramirez
 */
class MiHilo extends Thread{
   //Construye un nuevo hilo.
    MiHilo(String nombre){
    //super se usa para llamar a la versión del constructor de Thread
        super(nombre);
    }
    //Punto de entrada del hilo
    public void run(){
        System.out.println(getName()+" iniciando.");
    //Como ExtendThread extiende de Thread, puede llamar directamente 
    //a todos los métodos de Thread, incluido el método getName().
    try {
        for (int cont=0;cont<10;cont++){
            Thread.sleep(400);
            System.out.println("En "+getName()+ ", el recuento es "+cont);
        }
    }catch (InterruptedException exc){
        System.out.println(getName()+ "interrumpido.");
    }
        System.out.println(getName()+ "finalizando.");
    }
}