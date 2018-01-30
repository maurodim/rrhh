/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.interfaces;

import java.util.ArrayList;
import java.util.Date;
import javax.swing.table.TableModel;

/**
 *
 * @author mauro
 */
public interface Agendable {
    public Integer guardarAgenda(Object objeto);
    public Boolean modificarAgenda(Object objeto);
    public ArrayList listarAgenda(Date fecha,int estado,Integer empresa);
    public TableModel mostrarEnTabla(ArrayList listado);
    
}
