/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Order;
import DTO.OrderDetail;
import DTO.OrderHistory;
import DTO.Toy;
import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
            boolean paymentType, int voucher_id, int user_id, double order_amount) throws Exception {
        int THEOrderId = -1;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "INSERT INTO [dbo].[Order]\n"
                        + "           ([user_id]\n"
                        + "           ,[voucher_id]\n"
                        + "           ,[payment_type]\n"
                        + "           ,[order_amount]\n"
                        + "           ,[name]\n"
                        + "           ,[phone]\n"
                        + "           ,[address])\n"
                        + "     VALUES\n"
                        + "           (?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?)";
                ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, user_id);
                ps.setInt(2, voucher_id);
                ps.setBoolean(3, paymentType);
                ps.setDouble(4, order_amount);
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
        } finally {
            closeConnection();
        }
        return THEOrderId;

    }

    public int CreateOrderDetail(int toyId, int quantity, double price, int orderId, String warrantyCode, String status) throws Exception {
        int work = 0;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "INSERT INTO OrderDetail (toy_id, quantity, OD_price, order_id, warranty_code, status) VALUES (?, ?, ?, ?, ?, ?)";
                ps = con.prepareStatement(sql);
                ps.setInt(1, toyId);
                ps.setInt(2, quantity);
                ps.setDouble(3, price);
                ps.setInt(4, orderId);
                ps.setString(5, warrantyCode);
                ps.setString(6, status);
                work = ps.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return work;
    }

    public ArrayList<OrderDetail> getAllOrderDetail() throws Exception {
        ArrayList<OrderDetail> detailList = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select Toy.toy_name,OrderDetail.quantity,"
                        + "OrderDetail.OD_price, OrderDetail.order_detail_id,"
                        + "OrderDetail.order_id, OrderDetail.warranty_code, Order.order_date"
                        + "from Toy\n"
                        + "inner join OrderDetail on Toy.toy_id = OrderDetail.toy_id\n"
                        + "inner join Order on OrderDetail.order_id = Order.order_id\n"
                        + "where Order.status = 'Complete'";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    OrderDetail list = new OrderDetail(rs.getInt("order_detail_id"),
                            rs.getString("toy_name"), rs.getInt("quantity"),
                            rs.getDouble("price"), rs.getInt("order_id"),
                            rs.getDate("orderDate"), rs.getString("customerName"));
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

    public ArrayList<OrderHistory> orderHistory() throws SQLException, Exception {
        ArrayList<OrderHistory> listOrder = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select OrderDetail.[order_detail_id], [Order].order_date, Image.image_toy, Toy.toy_name, OrderDetail.quantity, Category.category_name, Toy.description, OrderDetail.status, Toy.price, OrderDetail.OD_price, [Order].order_amount\n"
                        + "from Toy \n"
                        + "inner join OrderDetail on Toy.toy_id = OrderDetail.toy_id\n"
                        + "inner join [Order] on OrderDetail.order_id = [Order].order_id\n"
                        + "inner join Image on Toy.toy_id = Image.toy_id\n"
                        + "inner join Category on Toy.category_id = Category.category_id\n"
                        + "where Toy.category_id = Category.category_id";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    OrderHistory list = new OrderHistory(rs.getInt("order_detail_id"), rs.getDate("order_date"), rs.getString("image_toy"), rs.getString("toy_name"), rs.getInt("quantity"), rs.getString("category_name"), rs.getString("description"), rs.getString("status"), rs.getDouble("price"), rs.getDouble("OD_price"), rs.getDouble("order_amount"));
                    listOrder.add(list);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listOrder;
    }
}
