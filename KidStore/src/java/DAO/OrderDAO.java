/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Order;
import DTO.OrderDetail;
import DTO.Toy;
import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class OrderDAO {

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

    public int CreateNewOrder(String name, String phone, String address,
            boolean paymentType, int voucher_id, int user_id, String status) throws Exception {
        int THEOrderId =-1;
        try {
            con = DBUtils.getConnection();
        if (con != null) {
                String sql = "INSERT INTO Order (user_id, status, voucher_id, payment_type, name, phone, address) VALUES (?, ?, ?, ?, ?, ?, ?)";
                ps = con.prepareStatement(sql);
                ps.setInt(1, user_id);
                ps.setString(2, status);
                ps.setInt(3, voucher_id);
                ps.setBoolean(4, paymentType);
                ps.setString(5, name);
                ps.setString(6, phone);
                ps.setString(7, address);
                ps.executeUpdate();
                rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    THEOrderId = rs.getInt(1);
                    System.out.println("Newly created order ID (getGeneratedKeys): " + THEOrderId);
            } else {
                throw new SQLException("Failed to retrieve generated order ID");
            }
        }
            } catch (Exception e) {
                e.printStackTrace();
            }
            finally {
                closeConnection();
            } 
    return THEOrderId;
    
}
    public int CreateOrderDetail(int toyId, int quantity, double price, int orderId, String warrantyCode) throws Exception{
        int work = 0;
         try {
            con = DBUtils.getConnection();
        if (con != null) {
                String sql = "INSERT INTO OrderDetail (toy_id, quantity, price, order_id, warranty_code) VALUES (?, ?, ?, ?, ?)";
                ps = con.prepareStatement(sql);
                ps.setInt(1, toyId);
                ps.setInt(2, quantity);
                ps.setDouble(3, price);
                ps.setInt(4, orderId);
                ps.setString(5, warrantyCode);
                work = ps.executeUpdate();
        }
            } catch (Exception e) {
                e.printStackTrace();
            }
            finally {
                closeConnection();
            } 
         return work;
    }
    public ArrayList<OrderDetail> getAllOrderDetail() throws Exception{
        ArrayList<OrderDetail> detailList = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select Toy.toy_name,OrderDetail.quantity,"
                        + "OrderDetail.price, OrderDetail.order_detail_id,"
                        + "OrderDetail.order_id, OrderDetail.warranty_code, Order.order_date"
                        + "from Toy\n"
                        + "inner join OrderDetail on Toy.toy_id = OrderDetail.toy_id\n"
                        + "inner join Order on OrderDetail.order_id = Order.order_id\n"
                        + "where Order.status = 'Complete'";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    OrderDetail list = new OrderDetail(rs.getInt("order_detail_id"),
                            rs.getString("toy_name"),rs.getInt("quantity"),
                            rs.getDouble("price"),rs.getInt("order_id"),
                            rs.getDate("orderDate"),rs.getString("customerName"));
                    detailList.add(list);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return detailList;
    }
    }

