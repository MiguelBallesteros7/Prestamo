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
public class Prestamo {

    public double capital;
    public double interes;
    public double importePrestamo;
    public int tiempo;

    public Prestamo(double capital, double interes, int tiempo) {
        this.capital = capital;
        this.interes = interes;
        this.tiempo = tiempo;
        this.importePrestamo = importeTotal(capital, interes, tiempo);
    }

    public double getCapital() {
        return capital;
    }

    public double getInteres() {
        return interes;
    }

    public int getTiempo() {
        return tiempo;
    }

    public double getImportePrestamo() {
        return importePrestamo;
    }

    public double importeTotal(double capital, double interes, int tiempo) {
        double interesS = capital * interes * tiempo / 1200;
        return interesS + capital;
    }

}
