/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * 
 * @author jose eduardo ramirez
 */
class ExtendThread{
     public static void main(String[] args) {
         System.out.println("Iniciando hilo principal.");
         MiHilo mh=new MiHilo("#1");
         mh.start();
         for (int i=0;i<50;i++){
             System.out.print(".");
         try {
             Thread.sleep(100);
         }catch (InterruptedException exc) {
             System.out.println("Hilo principal interrumpido");
         }
         }
         System.out.println("Hilo principal finalizado");
     }
 }
