package DAO;

/**
 *
 * @author trant
 */

import DTO.Toy;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import Utils.DBUtils;
import java.util.ArrayList;

public class ToyDAO {
    
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
    
    public ArrayList<Toy> toyList() throws SQLException, Exception {
        ArrayList<Toy> listToy = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select Toy.toy_id, Toy.toy_name,Toy.quantity, Image.imageToy,"
                        + " Toy.price, Toy.description, Toy.category_id, Toy.cart_id\n"
                        + "from Image\n"
                        + "inner join Toy on Image.image_id = Toy.image_id";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    Toy list = new Toy(rs.getInt("toy_id"), rs.getString("toy_name"),rs.getInt("quantity"), rs.getString("imageToy")
                            , rs.getDouble("price"),rs.getString("description"), 
                            rs.getInt("category_id"), rs.getInt("cart_id"));
                    listToy.add(list);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listToy;
    }

    public Toy getToyUsingID(int toyId) throws SQLException, Exception {
        Toy toy = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select toy_name,quantity, price, description, category_id, cart_id from Toy"
                        + " where toy_id = ?";
                ps = con.prepareStatement(sql);
                ps.setInt(1, toyId);
                rs = ps.executeQuery();
                while (rs.next()) {
                    toy = new Toy(rs.getInt(toyId), rs.getString("toy_name"),rs.getInt("quantity")
                            , rs.getDouble("price"),rs.getString("description"), 
                            rs.getInt("category_id"), rs.getInt("cart_id"));   
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return toy;
    }
    
    public ArrayList<Toy> toyCategoryById(int categoryId) throws Exception {
        ArrayList<Toy> listToy = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select Toy.toy_name, Image.imageToy, Toy.price\n"
                        + "from Image\n"
                        + "inner join Toy on Image.image_id = Toy.image_id\n"
                        + "where Toy.category_id = ?";
                ps = con.prepareStatement(sql);
                ps.setInt(1, categoryId);
                rs = ps.executeQuery();
                while (rs.next()) {
                    Toy list = new Toy(rs.getString("toy_name"), rs.getString("imageToy"), rs.getDouble("price"));
                    listToy.add(list);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listToy;
    }
}
