package DAO;

/**
 *
 * @author trant
 */
import DTO.Account;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import Utils.DBUtils;
import java.util.ArrayList;

public class AccountDAO {

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

    public Account signup(String userName, String password) throws SQLException, Exception {
        Account user = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "insert into Account (username, password) values (?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, userName);
                ps.setString(2, password);
                ps.executeUpdate();
                user = new Account(userName, password);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return user;
    }

}
