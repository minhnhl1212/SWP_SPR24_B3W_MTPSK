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
                String sql = "select Toy.toy_id, Toy.toy_name,Toy.quantity, Image.imageToy, Toy.price, Toy.description, Toy.category_id, Toy.discount, Toy.warranty_time, Toy.approve, Image.image_id, Image.main\n"
                        + "from Image\n"
                        + "inner join Toy on Image.toy_id = Toy.toy_id\n"
                        + "where approve = 1";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    Toy list = new Toy(rs.getInt("toy_id"), rs.getString("toy_name"),
                            rs.getInt("quantity"), rs.getString("imageToy"),
                            rs.getDouble("price"), rs.getString("description"),
                            rs.getInt("approve"), rs.getInt("category_id"),
                            rs.getDouble("discount"), rs.getInt("warranty_time"));
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
                String sql = "select Toy.toy_name,Toy.quantity, Image.imageToy,"
                        + " Toy.price, Toy.description, Toy.category_id, Toy.discount\n"
                        + "from Image\n"
                        + "inner join Toy on Image.image_id = Toy.image_id where Toy.toy_id = ?";
                ps = con.prepareStatement(sql);
                ps.setInt(1, toyId);
                rs = ps.executeQuery();
                while (rs.next()) {
                    toy = new Toy(toyId, rs.getString("toy_name"),
                            rs.getInt("quantity"), rs.getString("imageToy"),
                            rs.getDouble("price"), rs.getString("description"),
                            rs.getInt("category_id"), rs.getDouble("discount"));
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
                String sql = "select Toy.toy_name, Image.imageToy, Toy.price, Toy.discount\n"
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

    public Toy addToy(String name, String image, double price, String description, int idCategory, double discount, int warrantyTime) throws SQLException, Exception {
        Toy toy = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "INSERT INTO Image (imageToy)\n"
                        + "VALUES (?)\n"
                        + "    \n"
                        + "DECLARE @image_id INT\n"
                        + "SET @image_id = SCOPE_IDENTITY();\n"
                        + "               \n"
                        + "insert into Toy (toy_name, price, description, category_id, discount, warranty_time, approve)\n"
                        + "values (?,?,?,?,?,?,0)\n"
                        + "                       \n"
                        + "DECLARE @toy_id INT;\n"
                        + "SET @toy_id = SCOPE_IDENTITY();\n"
                        + "                    \n"
                        + "UPDATE Image\n"
                        + "SET toy_id = @toy_id, main = @toy_id\n"
                        + "WHERE image_id = @image_id";
                ps = con.prepareStatement(sql);
                ps.setString(1, image);
                ps.setString(2, name);
                ps.setDouble(3, price);
                ps.setString(4, description);
                ps.setInt(5, idCategory);
                ps.setDouble(6, discount);
                ps.setInt(7, warrantyTime);
                ps.executeUpdate();
                toy = new Toy(name, image, price, description, 0, idCategory, discount, warrantyTime);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return toy;
    }

    public Toy editToy(String name, String image, double price, String description, int idCategory) throws SQLException, Exception {
        Toy toy = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "update Toy\n"
                        + "set toy_name = ?\n"
                        + "where toy_id = ?";
                ps = con.prepareStatement(sql);
                ps.setInt(1, idCategory);
                ps.setString(2, image);
                ps.setString(3, name);
                ps.setDouble(4, price);
                ps.setString(5, description);
                ps.executeUpdate();
                toy = new Toy(name, image, price, description, 0, idCategory, 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return toy;
    }

    public Toy deleteToy(int idToy) throws Exception {
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "delete from Image where toy_id = ?;\n"
                        + "delete from Toy where toy_id = ?;";
                ps = con.prepareStatement(sql);
                ps.setInt(1, idToy);
                ps.setInt(2, idToy);
                ps.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return null;
    }
}
