/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author DAW210
 */
public class Utilidades {

    public static ArrayList<String> getMeses() {
        ArrayList<String> meses = new ArrayList<String>();
        for (int i = 1; i <= 10; i++) {

            meses.add(String.valueOf(12 * i));

        }
        return meses;
    }

    public static ArrayList<Cuota> ListaCuotas(int numeroC, double importeT) {
        ArrayList<Cuota> cuotas = new ArrayList<Cuota>();
        double importeC = importeT / numeroC;
        for (int i = 1; i <= numeroC; i++) {
            double interesC = importeC - importeC * (i - 1) / numeroC;
            double capitalC = importeC - interesC;
            Cuota cuot = new Cuota(i, importeC, capitalC, interesC);
            cuotas.add(cuot);
        }
        return cuotas;
    }

}
