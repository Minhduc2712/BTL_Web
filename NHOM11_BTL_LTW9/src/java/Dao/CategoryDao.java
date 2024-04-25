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
import model.Category;

/**
 *
 * @author HP
 */
public class CategoryDao {
    public static ArrayList<Category> getCategorys(String name)
    {
        ArrayList<Category>list=new ArrayList<>();
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select id from categoryParent where nameP=?";
        String code="";
        try{
            ps=connection.prepareStatement(query);
            ps.setString(1, name);
            rs=ps.executeQuery();
            if(rs.next())
                code=rs.getString("id");
            
            query="select * from category where idCateP=? and status=1";
            ps=connection.prepareStatement(query);
            ps.setString(1, code);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Category c=new Category();
                c.setId(rs.getString("id"));
                c.setIdCateP(rs.getString("idCateP"));
                c.setName(rs.getString("name"));
                list.add(c);
            }
            rs=ps.executeQuery();
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
    public static String getNameCategory(String name)
    {
        if(name.equalsIgnoreCase("PK"))
            return "Phụ kiện";
        else if(name.equalsIgnoreCase("T"))
            return "Túi";
        else if(name!=null){
            ConnectionPool pool = ConnectionPool.getInstance();
            Connection connection = pool.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            String query="select name from category where id like '%"+name+"%'";
            try{
                ps=connection.prepareStatement(query);
                rs=ps.executeQuery();
                if(rs.next())
                    return rs.getString("name");
            }catch(SQLException e){
                System.out.println(e);
            }finally {
                DBUtil.closeResultSet(rs);
                DBUtil.closePrepareStatement(ps);
                pool.freeConnection(connection);
            }
        }
        return "Tất cả sản phẩm";
    }
    public static ArrayList<Category> getAllCategorys(int status)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select * from category where status=?";
        ArrayList<Category> listAllCategory=new ArrayList<>();
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1, status);
            rs=ps.executeQuery();
            while(rs.next())
                listAllCategory.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3)));
        }catch(SQLException e){
            e.printStackTrace();
        }finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return listAllCategory;
    }
    public static ArrayList<Category> getCategorys()
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="select * from category";
        ArrayList<Category> listAllCategory=new ArrayList<>();
        try{
            ps=connection.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next())
                listAllCategory.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3)));
        }catch(SQLException e){
            e.printStackTrace();
        }finally
        {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return listAllCategory;
    }
    public static void updateStatusCategory(String idcate,int status)
    {
        ConnectionPool pool=ConnectionPool.getInstance();
        Connection connection=pool.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        String query="update category set status=? where id=?";
        try{
            ps=connection.prepareStatement(query);
            ps.setInt(1, status);
            ps.setString(2, idcate);
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
}
