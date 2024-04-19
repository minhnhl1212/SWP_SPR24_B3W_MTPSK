package DAO;

import DTO.Account;
import DTO.News;
import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

/**
 *
 * @author trant
 */
public class NewsDAO {

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

    public ArrayList<News> newsList() throws SQLException, Exception {
        ArrayList<News> newsList = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select tittle, image, date, staff, description\n"
                        + "from News";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    News list = new News(rs.getString("tittle"), rs.getString("image"), rs.getDate("date"), rs.getString("staff"), rs.getString("description"));
                    newsList.add(list);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return newsList;
    }

    public News addNews(String tittle, String image, java.sql.Date date, String staff, String description) throws SQLException, Exception {
        News user = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "insert into News(tittle, image, date, staff, description) \n"
                        + "values (?,?,?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, tittle);
                ps.setString(2, image);
                ps.setDate(3, date);
                ps.setString(4, staff);
                ps.setString(5, description);
                ps.executeUpdate();
                user = new News(tittle, image, date, staff, description);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return user;
    }

}
