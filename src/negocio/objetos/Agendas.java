/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.objetos;

import java.util.ArrayList;
import java.util.Date;
import javax.swing.table.TableModel;
import negocio.interfaces.Agendable;

/**
 *
 * @author mauro
 */
public class Agendas implements Agendable{
    private Integer id;
    private Integer tipoMovimiento;
    private String descripcionMovimiento;
    private Integer idEmpresa;
    private String nombreEmpresa;
    private Date fecha;
    private Integer idContacto;
    private String nombreContacto;
    private Integer tipoContacto;
    private Integer idLugar;
    private String descripcionLugar;
    private int hecho;

    public Agendas() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTipoMovimiento() {
        return tipoMovimiento;
    }

    public void setTipoMovimiento(Integer tipoMovimiento) {
        this.tipoMovimiento = tipoMovimiento;
    }

    public String getDescripcionMovimiento() {
        return descripcionMovimiento;
    }

    public void setDescripcionMovimiento(String descripcionMovimiento) {
        this.descripcionMovimiento = descripcionMovimiento;
    }

    public Integer getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(Integer idEmpresa) {
        this.idEmpresa = idEmpresa;
    }

    public String getNombreEmpresa() {
        return nombreEmpresa;
    }

    public void setNombreEmpresa(String nombreEmpresa) {
        this.nombreEmpresa = nombreEmpresa;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Integer getIdContacto() {
        return idContacto;
    }

    public void setIdContacto(Integer idContacto) {
        this.idContacto = idContacto;
    }

    public String getNombreContacto() {
        return nombreContacto;
    }

    public void setNombreContacto(String nombreContacto) {
        this.nombreContacto = nombreContacto;
    }

    public Integer getTipoContacto() {
        return tipoContacto;
    }

    public void setTipoContacto(Integer tipoContacto) {
        this.tipoContacto = tipoContacto;
    }

    public Integer getIdLugar() {
        return idLugar;
    }

    public void setIdLugar(Integer idLugar) {
        this.idLugar = idLugar;
    }

    public String getDescripcionLugar() {
        return descripcionLugar;
    }

    public void setDescripcionLugar(String descripcionLugar) {
        this.descripcionLugar = descripcionLugar;
    }

    public int getHecho() {
        return hecho;
    }

    public void setHecho(int hecho) {
        this.hecho = hecho;
    }

    public Agendas(Integer id, Integer tipoMovimiento, Integer idEmpresa, Date fecha, Integer idContacto, Integer tipoContacto, Integer idLugar, int hecho) {
        this.id = id;
        this.tipoMovimiento = tipoMovimiento;
        this.idEmpresa = idEmpresa;
        this.fecha = fecha;
        this.idContacto = idContacto;
        this.tipoContacto = tipoContacto;
        this.idLugar = idLugar;
        this.hecho = hecho;
    }

    @Override
    public Integer guardarAgenda(Object objeto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Boolean modificarAgenda(Object objeto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList listarAgenda(Date fecha, int estado, Integer empresa) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public TableModel mostrarEnTabla(ArrayList listado) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
