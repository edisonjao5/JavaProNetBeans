/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.mysql.cj.xdevapi.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author edisonjao
 */
public class testJDB {
    public static void main(String[] args){
        String url = "jdbc:mysql://localhost:3306/EventosCo?zeroDateTimeBehavior=CONVERT_TO_NULL [root on Default schema]";
        try{
            Connection conexion = DriverManager.getConnection(url, "root", "nathan10");
            Statement instruccion = (Statement) conexion.createStatement();
            String sql = "SELECT idEmpleado,Nombre_Emplead,Cargo_Emplead,Privilegios_idPrivilegios FROM Empleado";
            ResultSet resultado = instruccion.executeQuery(sql);
            
            while(resultado.next()){
                System.out.println("Id_Empleado" + resultado.getInt(" idEmpleado"));
                System.out.println("Nombre" + resultado.getString(" Nombre_Emplead"));
                System.out.println("Cargo" + resultado.getString(" Cargo_Emplead"));
                System.out.println("Privilegios" + resultado.getInt(" Privilegios_idPrivilegios"));
            }
            resultado.close();
            instruccion.close();
            conexion.close();   
        }
        catch(SQLException e){
            e.printStackTrace(System.out);
        }
    }
}
