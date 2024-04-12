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
import Utils.DBUtils;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class DAO {
    
    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    private void closeConnection() throws Exception {
        if (rs != null) {
            rs.close();
        }
        if (ps != null) {
            ps.close();
        }
        if (con != null) {
            con.close();
        }
    }
    
         public Account Login(String username, String password) throws Exception{
        Account account = null;
        int userid;
        String fullname, phone, address;
        boolean active;
        int role, payment;
        try{  
            con = DBUtils.getConnection();
            String sql = "Select user_id, full_name, phone, address, "
                    + "active, role_id, payment_id from Account"
                    + " where [username]=? and [password]=?";
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()){
                userid = rs.getInt(1);
                fullname = rs.getString(2);
                phone = rs.getString(3);
                address = rs.getString(4);
                active = rs.getBoolean(5);
                role = rs.getInt(6);
                payment = rs.getInt(7);
                account = new Account(userid, username, password, fullname, phone, address, active, role, payment);
            }
        }
        catch (Exception ex){
            throw ex;
        }
        finally {
            closeConnection();
        }
        return account;
    }
    }

