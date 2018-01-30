/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rrhh;

import Configuracion.Propiedades;
import java.io.IOException;
import java.text.ParseException;
import javax.swing.JFrame;
import pantallas.Inicio;

/**
 *
 * @author mauro
 */
public class RrHh {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ParseException, IOException {
        Propiedades.CargarPropiedades();
        Inicio inicio=new Inicio();
        
        inicio.setVisible(true);
        inicio.pack();
        inicio.setExtendedState(JFrame.MAXIMIZED_BOTH);
        inicio.toFront();
    }
    
}
