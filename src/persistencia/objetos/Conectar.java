/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia.objetos;



import Configuracion.Propiedades;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author mauro
 */
public class Conectar {
    Connection con=null;
    public Connection conexion() throws SQLException{
        /*
        Pool pool=new Pool();
        
        try {
            con=pool.datasource.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(Conectar.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        */
                MysqlDataSource dataSource=new MysqlDataSource();
		try{
			//Class.forName(driver1).newInstance();
                    dataSource.setUser(Propiedades.getUSUARIO());//bambu//rr
                    dataSource.setDatabaseName(Propiedades.getBD());//("cam");//("bambumau_cam");//maurodim_lseriea
                    dataSource.setPassword(Propiedades.getCLAVE());//("bambuSf");//4FTfQRKWPDe4KF9d
                    dataSource.setServerName(Propiedades.getSERVER());//("167.250.5.18");//10.0.0.201
                    con=(Connection) dataSource.getConnection();
                    //st=con.createStatement();
                 }catch(Exception ex){
                        
                     
                        String cod1=String.valueOf(ex);
                        //JOptionPane.showMessageDialog(null, ex);
			System.out.println("NO SE PUDO CONECTAR A LA BASE "+ex);
                        con.close();
		
                 }finally{
                    
                    return con;
                }
}
    private void reconectar() throws SQLException{
        con.close();
        
        conexion();
    }
}
