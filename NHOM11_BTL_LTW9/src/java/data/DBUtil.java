/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author HP
 */
public class DBUtil {
    public static void closeStatement(Statement s) 
    {
        try{
            if(s!=null)
                s.close();
        }catch(SQLException e){
            e.printStackTrace();
        }  
    }
    public static void closePrepareStatement(PreparedStatement ps) 
    {
        try{
            if(ps!=null)
                ps.close();
        }catch(SQLException e){
            e.printStackTrace();
        }  
    }
    public static void closeResultSet(ResultSet rs) 
    {
        try{
            if(rs!=null)
                rs.close();
        }catch(SQLException e){
            e.printStackTrace();
        }  
    }
}
