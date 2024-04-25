/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import data.ConnectionPool;
import data.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.OrderShop;
import model.OrderShopDetail;
import model.Product;
import model.User;

/**
 *
 * @author HP
 */
public class OrderDetailDAO {
    public static void addOrderDetail(OrderShopDetail o)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="insert into ordershopdetail(idProduct,idOrderShop,quantity) values(?,?,?)";
        User u=new User();
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1, o.getIdProduct());
            ps.setInt(2, o.getIdOrderShop());
            ps.setInt(3, o.getQuantity());
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
    public static ArrayList<OrderShopDetail> getListOrderDetail(int idOrder)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select * from ordershopdetail where idOrderShop=?";
        User u=new User();
        ArrayList<OrderShopDetail>listOrderDetail=new ArrayList<>();
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,idOrder);
            rs=ps.executeQuery();
            while(rs.next())
            {
                OrderShopDetail o=new OrderShopDetail(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4));
                Product p=ProductDao.getProduct(rs.getInt(2)+"");
                OrderShop od=OrderDAO.getOrder(rs.getInt(3));
                o.setOrder(od);
                o.setProduct(p);
                listOrderDetail.add(o);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return listOrderDetail;
    }
}
