package Dao;


import Dao.CategoryDao;
import data.ConnectionPool;
import model.Contact;
import data.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ContactDAO {
    public static void addContact(Contact c)
    {
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "insert into contact(name,email,subject,mess) values(?,?,?,?)";

        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, c.getName());
            ps.setString(2,c.getEmail());
            ps.setString(3,c.getSubject());
            ps.setString(4,c.getMess());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
    }
}
