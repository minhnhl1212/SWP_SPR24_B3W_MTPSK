package DAO;

import DTO.Account;
import DTO.News;
import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
                String sql = "select news_id, description, image, name from News";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    News list = new News(rs.getInt("news_id"), rs.getString("description"), rs.getString("image"), rs.getString("name"));
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

    public News addNews(String description, String image, String name) throws SQLException, Exception {
        News user = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "insert into News(description, image, name) values (?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, description);
                ps.setString(2, image);
                ps.setString(2, name);
                ps.executeUpdate();
                user = new News(description, image, name);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return user;
    }

}
