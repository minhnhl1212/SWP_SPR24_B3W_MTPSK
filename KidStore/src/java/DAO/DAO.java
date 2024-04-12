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
    
    public Account checkLogin(String userName, String password) throws SQLException, Exception {
        Account user = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select *  from [User] where UserName = ? and Password = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, userName);
                ps.setString(2, password);
                rs = ps.executeQuery();
                if (rs.next()) {
                    user = new Account(rs.getInt("UserID"), rs.getString("UserName"), rs.getString("Password"), rs.getString("FullName"), rs.getString("Phone"), rs.getString("Address"), rs.getInt("RoleID"), rs.getString("Avatar"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return user;
    }
    
    
             
        
}
