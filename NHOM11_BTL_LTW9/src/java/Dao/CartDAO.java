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
import model.Cart;
import model.Product;

/**
 *
 * @author HP
 */
public class CartDAO {
    public static void addCart(Cart cart)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="insert into cart (idCustomer,idProduct,quantity,priceBuy) values(?,?,?,?);";
        Cart c=new Cart();
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,cart.getIdCustomer());
            ps.setInt(2,cart.getIdProduct());
            ps.setInt(3,cart.getQuantity());
            ps.setDouble(4,cart.getPriceBuy());
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
    public static ArrayList<Cart> getListCart(int idCustomer)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select * from cart where idCustomer=?";
        ArrayList<Cart>list=new ArrayList<>();
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,idCustomer);
            rs=ps.executeQuery();
            while(rs.next())
            {
                int idProduct=rs.getInt("idProduct");
                Product product=ProductDao.getProduct(idProduct+"");
                Cart c=new Cart(rs.getInt("id"),rs.getInt("idCustomer"),rs.getInt("idProduct"), rs.getInt("quantity"), rs.getDouble("priceBuy"));
                c.setProduct(product);
                c.setTotal(c.getQuantity()*c.getPriceBuy());
                list.add(c);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return list;
    }
    public static boolean checkProduct(int idCustomer,int idProduct)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select * from cart where idCustomer=? and idProduct=?";
        ArrayList<Cart>list=new ArrayList<>();
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,idCustomer);
            ps.setInt(2,idProduct);
            rs=ps.executeQuery();
            if(rs.next())
                return true;
        }catch(SQLException e){
            e.printStackTrace();
        }finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return false;
    }
    public static void updateCart(int idCustomer,int idProduct,int quantity, double price)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="update cart set quantity=?,priceBuy=? where idCustomer=? and idProduct=?";
        ArrayList<Cart>list=new ArrayList<>();
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setDouble(2, price);
            ps.setInt(3,idCustomer);
            ps.setInt(4,idProduct);
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
    public static void deleteProductInCart(int idCustomer,int idProduct)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        String query="delete from cart where idCustomer=? and idProduct=?";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1,idCustomer);
            ps.setInt(2,idProduct);
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }finally
        {
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
    }
    public static double getTotalMoney(ArrayList<Cart>listCart)
    {
        double total=0;
        for(int i=0;i<listCart.size();i++)
            total+=listCart.get(i).getTotal();
        return total;
    }
}
