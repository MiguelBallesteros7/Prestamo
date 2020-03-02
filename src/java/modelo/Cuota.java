/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author DAW210
 */
public class Cuota {
   public int numeroCuota;
   public double importeCuota;
   public double capital;
   public double intereses;

    public Cuota(int numeroCuota, double importe, double capital, double intereses) {
        this.numeroCuota = numeroCuota;
        this.importeCuota = importe;
        this.capital = capital;
        this.intereses = intereses;
    }

    public int getNumeroCuota() {
        return numeroCuota;
    }

    public String getCapitalString() {
        return String.format("%.2f", capital);
       
    }
    
    public double getImporteCuota() {
        return importeCuota;
    }

    public double getCapital() {
        return capital;
    }

    public double getIntereses() {
        return intereses;
    }
   
   
   
}
