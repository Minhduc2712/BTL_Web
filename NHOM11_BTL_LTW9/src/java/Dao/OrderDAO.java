package Dao;

import data.ConnectionPool;
import data.DBUtil;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import model.OrderShop;
import model.User;

public class OrderDAO {
    public static void addOrder(OrderShop order)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="insert into ordershop(idUser,phone,address,datebuy,timebuy,payment,note,totalMoney) values(?,?,?,?,?,?,?,?)";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1, order.getIdUser());
            ps.setString(2, order.getPhone());
            ps.setString(3, order.getAddress());
            ps.setDate(4,order.getDate());
            ps.setTime(5,order.getTime());
            ps.setString(6, order.getPayment());
            ps.setString(7, order.getNote());
            ps.setDouble(8,order.getTotalMoney());
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
    }
    public static int searchOrder(int idUser,Date date,Time time)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select id from ordershop where idUser=? and datebuy=? and timebuy=?";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,idUser);
            ps.setDate(2,date);
            ps.setTime(3,time);
            rs=ps.executeQuery();
            if(rs.next())
                return rs.getInt("id");
        }catch(SQLException e){
            e.printStackTrace();
        }finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return 0;
    }
    public static OrderShop getOrder(int id)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select * from ordershop where id=?";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            if(rs.next())
            {
                OrderShop order=new OrderShop(rs.getInt(1),rs.getInt(2), rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),
                        rs.getDate(3),rs.getTime(4),rs.getDouble(9));
                User u=UserDAO.getUser(rs.getInt("idUser"));
                order.setUser(u);
                return order;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return null;
    }
    public static ArrayList<OrderShop> getListOrder()
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        ArrayList<OrderShop>listOrder=new ArrayList<>();
        String query="select * from OrderShop";
        try{
            ps=connection.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next())
            {
                OrderShop order=new OrderShop(rs.getInt(1),rs.getInt(2), rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),
                        rs.getDate(3),rs.getTime(4),rs.getDouble(9));
                User u=UserDAO.getUser(rs.getInt("idUser"));
                order.setUser(u);
                listOrder.add(order);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return listOrder;
    }
}
