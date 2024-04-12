/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Account;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author admin
 */
public class DAO {
             public static Connection getConnection() throws Exception {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String connectionString = "jdbc:sqlserver://localhost:1433;database=KidStore";
            Connection cnn = DriverManager.getConnection(connectionString, "sa", "123");
            return cnn;
        } catch (ClassNotFoundException | SQLException ex) {
            throw ex;
        }
    }
        public Account Login(String username, String password) throws Exception{
        Account account = null;
        Connection cnn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String fullname, address;
        Date Birthday;
        boolean role;
        try{
            cnn = getConnection();
            String sql = "Select fullName, role from Users"
                    + " where [UserName]=? and [Password]=?";
            ps = cnn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setInt(2, password);
            rs = ps.executeQuery();
            while (rs.next()){
                fullName = rs.getString(1);
                role = rs.getBoolean(2);
                Account = new Account(id, username, password);
            }
        }
        catch (Exception ex){
            throw ex;
        }
        finally {
            if(rs!=null){
                rs.close();
            }
            if(ps!=null){
                ps.close();
            }
            if(cnn!=null){
                cnn.close();
            }
        }
        return user;
    }
}
