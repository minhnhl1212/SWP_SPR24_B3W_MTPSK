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
                String sql = "select Toy.toy_id, Toy.toy_name,Toy.quantity, Image.image_toy, Toy.price, Toy.description, Toy.category_id, Toy.discount, Toy.warranty_time, Toy.isActive, Toy.isDisable, Image.image_id, Image.main\n"
                        + "from Image\n"
                        + "inner join Toy on Image.toy_id = Toy.toy_id\n"
                        + "where isActive = 1 and isDisable = 0 and Image.main = 1";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    Toy list = new Toy(rs.getInt("toy_id"), rs.getString("toy_name"),
                            rs.getInt("quantity"), rs.getString("image_toy"),
                            rs.getDouble("price"), rs.getString("description"),
                            rs.getInt("category_id"), rs.getDouble("discount"),
                            rs.getDate("warranty_time"), rs.getInt("isActive"),
                            rs.getInt("isDisable"));
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
                        + "inner join Toy on Image.toy_id = Toy.toy_id where Toy.toy_id = ?";
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
                String sql = "select Toy.toy_name, Image.image_toy, Toy.price, Toy.discount, Toy.isActive\n"
                        + "from Image\n"
                        + "inner join Toy on Image.toy_id = Toy.toy_id\n"
                        + "where Toy.category_id = ? and Toy.isActive = 1 and Toy.isDisable = 0";
                ps = con.prepareStatement(sql);
                ps.setInt(1, categoryId);
                rs = ps.executeQuery();
                while (rs.next()) {
                    Toy list = new Toy(rs.getString("toy_name"), rs.getString("image_toy"), rs.getDouble("price"), rs.getDouble("discount"));
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

    public Toy addToy(String name, String image, double price, String description, int idCategory, double discount, java.sql.Date warrantyTime, int userId) throws SQLException, Exception {
        Toy toy = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "INSERT INTO Image (image_toy)\n"
                        + "VALUES (?)\n"
                        + "         \n"
                        + "DECLARE @image_id INT\n"
                        + "SET @image_id = SCOPE_IDENTITY();\n"
                        + "\n"
                        + "insert into Toy (toy_name, price, description, category_id, discount, warranty_time, isActive, isDisable, user_id)\n"
                        + "values (?,?,?,?,?,?,0,0,?)\n"
                        + "\n"
                        + "DECLARE @toy_id INT;\n"
                        + "SET @toy_id = SCOPE_IDENTITY();\n"
                        + "                                     \n"
                        + "UPDATE Image\n"
                        + "SET toy_id = @toy_id, main = 1\n"
                        + "WHERE image_id = @image_id";
                ps = con.prepareStatement(sql);
                ps.setString(1, image);
                ps.setString(2, name);
                ps.setDouble(3, price);
                ps.setString(4, description);
                ps.setInt(5, idCategory);
                ps.setDouble(6, discount);
                ps.setDate(7, warrantyTime);
                ps.setInt(8, userId);
                ps.executeUpdate();
                toy = new Toy(name, image, price, description, idCategory, discount, warrantyTime, 0, 0, userId);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return toy;
    }

//    public Toy editToy(String name, String image, double price, String description, int idCategory) throws SQLException, Exception {
//        Toy toy = null;
//        try {
//            con = DBUtils.getConnection();
//            if (con != null) {
//                String sql = "update Toy\n"
//                        + "set toy_name = ?\n"
//                        + "where toy_id = ?";
//                ps = con.prepareStatement(sql);
//                ps.setInt(1, idCategory);
//                ps.setString(2, image);
//                ps.setString(3, name);
//                ps.setDouble(4, price);
//                ps.setString(5, description);
//                ps.executeUpdate();
//                toy = new Toy(name, image, price, description, 0, idCategory, 1);
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            closeConnection();
//        }
//        return toy;
//    }
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

    public ArrayList<Toy> toySearchByName(String name) throws Exception {
        ArrayList<Toy> listToy = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select Toy.toy_name, Image.imageToy, Toy.price, Toy.discount, Toy.approve\n"
                        + "from Image\n"
                        + "inner join Toy on Image.toy_id = Toy.toy_id\n"
                        + "where Toy.toy_name LIKE ? and Toy.approve = 1";
                ps = con.prepareStatement(sql);
                ps.setString(1, "%" + name + "%");
                rs = ps.executeQuery();
                while (rs.next()) {
                    Toy list = new Toy(rs.getString("toy_name"), rs.getString("imageToy"), rs.getDouble("price"), rs.getDouble("discount"));
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

    public ArrayList<Toy> toyListNotApprove() throws SQLException, Exception {
        ArrayList<Toy> listToy = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select Toy.toy_id, Toy.toy_name, Toy.quantity, Image.image_toy, Toy.price, Toy.description, Toy.category_id, Toy.discount, Toy.warranty_time, Toy.isActive, Toy.isDisable, Image.main, Account.user_id, Account.full_name\n"
                        + "from Image\n"
                        + "inner join Toy on Image.toy_id = Toy.toy_id\n"
                        + "inner join Account on Account.user_id = Toy.user_id\n"
                        + "where Toy.isActive = 0 and Toy.isDisable = 0";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    Toy list = new Toy(rs.getInt("toy_id"), rs.getString("toy_name"),
                            rs.getString("image_toy"), rs.getDouble("price"),
                            rs.getString("description"), rs.getInt("category_id"),
                            rs.getDouble("discount"), rs.getDate("warranty_time"),
                            rs.getInt("isActive"), rs.getInt("isDisable"),
                            rs.getInt("user_id"), rs.getString("full_name"));
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

    public Toy approveToy(int toyId) throws SQLException, Exception {
        Toy toy = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "update Toy\n"
                        + "set isActive = 1\n"
                        + "where toy_id = ?";
                ps = con.prepareStatement(sql);
                ps.setInt(1, toyId);
                ps.executeUpdate();
                toy = new Toy(toyId);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return toy;
    }

    public Toy cancelToy(int toyId) throws SQLException, Exception {
        Toy toy = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "update Toy\n"
                        + "set isDisable = 1\n"
                        + "where toy_id = ?";
                ps = con.prepareStatement(sql);
                ps.setInt(1, toyId);
                ps.executeUpdate();
                toy = new Toy(toyId);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return toy;
    }
}
