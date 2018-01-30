/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia.objetos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import persistencia.interfaces.Transaccionable;

/**
 *
 * @author mauro
 * AQUI SE VAN A GESTIONAR TODAS LAS CONECCIONES DEL SISTEMA, LOS DATOS COMO OBJETOS
 * Y LAS INTERFACES VAN A GUARDAR, ELIMINAR O ACTUALIZAR LAS TABLAS, SE VA A PASAR EL STRING POR LA INTERFAZ 
 * PARA QUE AQUI SE REALICE LA TRANSACCION
 * 
 */
public class Conecciones implements Transaccionable{
    public Connection con;
    private PreparedStatement st;
    private String usuario;
    private String base;
    private String pass;
    private String servidor;
    private static Conectar cone;

    

    
    public Conecciones() {
        /*
        if(con!=null){
            
        }else{
        cone=new Conectar();
            try {
                cone.conexion();
            } catch (SQLException ex) {
                Logger.getLogger(Conecciones.class.getName()).log(Level.SEVERE, null, ex);
            }
        con=cone.con;
        }
                */
    }

    @Override
    public Boolean guardarRegistro(String sql) {
        Boolean coneccion=true;
        try {
            //System.out.println("SENTENCIA "+sql);
            /*
            if(con.isClosed()){
                cone=new Conectar();
        cone.conexion();
        con=cone.con;
            }
            */
            if(con!=null){
                st=con.prepareStatement(sql);   
            st.executeUpdate();
            
            //Inicio.coneccionRemota=true;
            }else{
                cone=new Conectar();
        cone.conexion();
        con=cone.con;
        st=con.prepareStatement(sql);   
            st.executeUpdate();
            }
            //this.st.executeQuery(sql);
            
        } catch (SQLException ex) {
            Logger.getLogger(Conecciones.class.getName()).log(Level.SEVERE, null, ex);
            System.err.println(ex);

        }finally{
            return coneccion;
        }
        
        
        //return coneccion;
    }

    @Override
    public Boolean guardarRegistros(ArrayList listadoDeSentencias) {
        String sql="";
        Boolean coneccionCorrecta=true;
        Iterator il=listadoDeSentencias.listIterator();
        while(il.hasNext()){
            sql=(String)il.next();
            try {
                st.executeUpdate(sql);
                //Inicio.coneccionRemota=true;
            } catch (SQLException ex) {
                Logger.getLogger(Conecciones.class.getName()).log(Level.SEVERE, null, ex);
                coneccionCorrecta=false;
               // Inicio.coneccionRemota=false;
            }
        }
        
        return coneccionCorrecta;
    }

    @Override
    public ResultSet leerConjuntoDeRegistros(String sql) {
        ResultSet rs=null;
        try {
            if(cone!=null){
                
            }else{
                cone=new Conectar();
            }
            cone.conexion();
            con=cone.con;
            
            st=con.prepareStatement(sql);
            st.execute();
            rs=st.getResultSet();
            
            //}
        } catch (SQLException ex) {
            //Inicio.coneccionRemota=false;
            System.out.println("NO SE CONECTA, ACA CARGA LOS OBJETOS");
            JOptionPane.showMessageDialog(null,"Error no se conecto a la base de datos, por favor vuelva a intentarlo");
            
            try {
                con.close();
            } catch (SQLException ex1) {
                Logger.getLogger(Conecciones.class.getName()).log(Level.SEVERE, null, ex1);
            }
            cone=new Conectar();
        cone.conexion();
        con=cone.con;
            Logger.getLogger(Conecciones.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("NO ENTRO LA CONECCION");
        }
        catch (NullPointerException ee){
            
            if(st!=null)//Inicio.coneccionRemota=false;
            
            System.out.println("ERROR "+sql);
        }
        finally{
            
            return rs;
        }
        //return rs;
    }
    private Boolean ValidarConeccion(){
        Boolean verificar=true;
        //if(st==null)verificar=false;
        if(con!=null){
            verificar=true;
        }else{
            verificar=false;
        }
        return verificar;
    }

    @Override
    public void CerrarConeccion() {
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conecciones.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void Conectar() {
         if(con!=null){
            
        }else{
        cone=new Conectar();
             try {
                 cone.conexion();
             } catch (SQLException ex) {
                 Logger.getLogger(Conecciones.class.getName()).log(Level.SEVERE, null, ex);
             }
        con=cone.con;
        }
    }

    @Override
    public void LimpiarConexiones() {
        try {
            if(con!=null){
            
        }else{
        cone=new Conectar();
             try {
                 cone.conexion();
             } catch (SQLException ex) {
                 Logger.getLogger(Conecciones.class.getName()).log(Level.SEVERE, null, ex);
                 JOptionPane.showMessageDialog(null,"sin conexion");
             }
        con=cone.con;
        }
            String sql="show full processlist";   
            st=con.prepareStatement(sql);
            st.executeUpdate();
            ResultSet rs=st.getResultSet();
            while(rs.next()){
                st=con.prepareStatement("kill "+rs.getInt("id"));
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conecciones.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public ResultSet leerUltimoGenerado() {
        ResultSet rr=null;
        try {
            rr = st.getGeneratedKeys();
        } catch (SQLException ex) {
            Logger.getLogger(Conecciones.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rr;
    }
   

    }
    

