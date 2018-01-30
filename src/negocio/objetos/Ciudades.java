/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.objetos;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ComboBoxModel;
import javax.swing.DefaultComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.table.DefaultTableModel;
import negocio.interfaces.Componable;
import negocio.interfaces.Personalizable;
import persistencia.interfaces.Transaccionable;
import persistencia.objetos.Conecciones;


/**
 *
 * @author mauro
 */
public class Ciudades implements Personalizable,Componable{
    private Integer id;
    private String descripcion;
    private Date fecha;
    private String sql;
    private Transaccionable tra=new Conecciones();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
    
    @Override
    public Integer agregar(Object objeto) {
        Ciudades ciudad=new Ciudades();
        ciudad=(Ciudades)objeto;
        sql="insert into localidades (descripcion) values ('"+ciudad.getDescripcion()+"')";
        tra.guardarRegistro(sql);
        return 0;
    }

    @Override
    public Boolean modificar(Object objeto) {
        Ciudades ciudad=new Ciudades();
        ciudad=(Ciudades)objeto;
        sql="update localidades set descripcion='"+ciudad.getDescripcion()+"' where id="+ciudad.getId();
        tra.guardarRegistro(sql);
        return true;
    }

    @Override
    public Boolean eliminar(Object objeto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object buscarPorNumero(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object buscarPorNombre(String nombre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object buscarPorCuit(String cuit) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList listar() {
        //Pojos.Ciudades pojosC=new Pojos.Ciudades();
        
       ArrayList listado=new ArrayList();
        
        sql="select * from localidades order by descripcion";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        try {
            while(rs.next()){
                Ciudades localidad=new Ciudades();
                localidad.setId(rs.getInt("id"));
                localidad.setDescripcion(rs.getString("descripcion"));
                //localidad.setProvincia(rs.getInt("id_provincia"));
                listado.add(localidad);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Localidades.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listado;
    }

    @Override
    public ArrayList listarPorNombre(String nombre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList listarPorCuit(String cuit) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DefaultListModel LlenarList(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DefaultTableModel LlenarTabla(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ComboBoxModel LlenarCombo(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DefaultListModel LlenarListConArray(ArrayList listado) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DefaultTableModel LlenarTablaConArray(ArrayList listado) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList listarPorInteger(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ComboBoxModel LlenarComboConArray(ArrayList listado) {
        Ciudades localidad=new Ciudades();
        DefaultComboBoxModel modelo=new DefaultComboBoxModel();
        Iterator it=listado.listIterator();
        while(it.hasNext()){
            localidad=(Ciudades)it.next();
            modelo.addElement(localidad.getDescripcion());
        }
        return modelo;
    }

    @Override
    public int posicionEnCombo(Object objeto, ArrayList listado) {
        Ciudades ciudad;
        Ciudades comparable=(Ciudades)objeto;
        Iterator it=listado.listIterator();
        int posicion=0;
        int marcador=0;
        while(it.hasNext()){
            ciudad=new Ciudades();
            ciudad=(Ciudades)it.next();
            if(comparable.getId()==ciudad.getId()){
                marcador=posicion;
            }
            posicion++;
        }
        return marcador;
    }

    @Override
    public DefaultTableModel LlenarTablaConArrayEnDolares(ArrayList listado) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DefaultTableModel LlenarTablaConArrayEnMonedas(ArrayList listado, Object moneda) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
