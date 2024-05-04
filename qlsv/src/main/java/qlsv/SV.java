package qlsv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SV {
	private String masv;
	private String hodem;
	private String tensv;
	private String telsv;
	private String emailsv;
	
	public void setMasv (String varMasv){
        this.masv=varMasv;
    }
    public void setHodem (String varHodem){
        this.hodem=varHodem;
    }
    public void setTensv (String varTensv){
        this.tensv=varTensv;
    }
    public void setTelsv(String varTelsv){
        this.telsv=varTelsv;
    }
    public void setEmailsv(String varEmailsv){
        this.emailsv=varEmailsv;
    }

    public String getMasv (){
        return this.masv;
    }
    public String getHodem (){
        return this.hodem;
    }
    public String getTensv (){
        return this.tensv;
    }
    public String getTelsv(){
        return this.telsv;
    }
    public String getEmailsv(){
        return this.emailsv;
    }
    
    public int themSV() throws SQLException{
        int result=0;
        if(this.masv==null || this.masv.length()<=0) return 0;
        if(this.tensv==null || this.tensv.length()<=0 || this.hodem==null || this.hodem.length()<=0) return 1;
        String sql ="";
        Connection conn=null;
        Statement statement=null;
        ResultSet rs=null;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String dburl="jdbc:mysql://localhost:3307/qlsv";
            String username="root"; 	
            String password="123456789";
            conn = DriverManager.getConnection(dburl, username, password);
            


            statement = conn.createStatement();
            System.out.println(statement);
            //MASV da co trong bang tblSV chua
            sql="SELECT * FROM sv WHERE MASV='"+this.masv+"'" ;
            rs = statement.executeQuery(sql);
            if(!rs.next()){//Thuc hien INSERT INTO
                sql="INSERT INTO sv (MASV, TENSV, HODEM,TELSV,EMAILSV)VALUES ('"+this.masv+"','"+this.tensv+"','"+this.hodem+"'";
                if(this.emailsv!=null && this.emailsv.length()>0) sql=sql+",'"+this.emailsv+"'";
                if(this.telsv!=null && this.telsv.length()>0) sql=sql+",'"+this.telsv+"'";
                sql=sql+")" ;
                if(statement.executeUpdate(sql)>0) result=10;
            }else result = 3;

            rs.close();
            statement.close();
            conn.close();

        }catch(Exception e){
            rs.close();
            statement.close();
            conn.close();
            System.out.println(e.toString());
        }
        return result;
    }//themSV
    
    
    public int suaSV() throws SQLException {
        int result = 0;
        if (this.masv == null || this.masv.length() <= 0) return 0;
        if (this.tensv == null || this.tensv.length() <= 0 || this.hodem == null || this.hodem.length() <= 0) return 1;
        String sql = "";
        Connection conn = null;
        Statement statement = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String dburl = "jdbc:mysql://localhost:3307/qlsv";
            String username = "root";
            String password = "123456789";
            conn = DriverManager.getConnection(dburl, username, password);

            statement = conn.createStatement();

            
            sql = "SELECT * FROM sv WHERE MASV='" + this.masv + "'";
            rs = statement.executeQuery(sql);
            if (rs.next()) {
                sql = "UPDATE sv SET TENSV='" + this.tensv + "', HODEM='" + this.hodem + "'";
                if (this.emailsv != null && this.emailsv.length() > 0) sql += ", EMAILSV='" + this.emailsv + "'";
                if (this.telsv != null && this.telsv.length() > 0) sql += ", TELSV='" + this.telsv + "'";
                sql += " WHERE MASV='" + this.masv + "'";
                if (statement.executeUpdate(sql) > 0) result = 11;
            } else {
                result = 3; 
            }

            rs.close();
            statement.close();
            conn.close();

        } catch (Exception e) {
            if (rs != null) rs.close();
            if (statement != null) statement.close();
            if (conn != null) conn.close();
            System.out.println(e.toString());
        }
        return result;
    }
    
    public int xoaSV() throws SQLException {
        int result = 0;
        if (this.masv == null || this.masv.length() <= 0) return 0;
        String sql = "";
        Connection conn = null;
        Statement statement = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String dburl = "jdbc:mysql://localhost:3307/qlsv";
            String username = "root";
            String password = "123456789";
            conn = DriverManager.getConnection(dburl, username, password);

            statement = conn.createStatement();

            // Check if the student exists
            sql = "SELECT * FROM sv WHERE MASV='" + this.masv + "'";
            rs = statement.executeQuery(sql);
            if (rs.next()) {
                sql = "DELETE FROM sv WHERE MASV='" + this.masv + "'";
                if (statement.executeUpdate(sql) > 0) {
                    result = 12; 
                }
            } else {
                result = 4;
            }

            rs.close();
            statement.close();
            conn.close();

        } catch (Exception e) {
            if (rs != null) rs.close();
            if (statement != null) statement.close();
            if (conn != null) conn.close();
            System.out.println(e.toString());
        }
        return result;
    }
    
    public static SV getSV(String masv) throws SQLException, ClassNotFoundException {
    	SV sv = null;
    	int result = 0;
        String sql = "";
        Connection conn = null;
        Statement statement = null;
        ResultSet rs = null;
        

        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            String dburl = "jdbc:mysql://localhost:3307/qlsv";
            String username = "root";
            String password = "123456789";
            conn = DriverManager.getConnection(dburl, username, password);
//            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/qlsv", "root", "123456789");

            
            statement = conn.createStatement();
//            statement.setString(1, masv);
            sql = "SELECT * FROM sv WHERE MASV='" + masv + "'";
            rs = statement.executeQuery(sql);

            if (rs.next()) {
                sv = new SV();
                sv.setMasv(rs.getString("MASV"));
                sv.setHodem(rs.getString("HODEM"));
                sv.setTensv(rs.getString("TENSV"));
                sv.setTelsv(rs.getString("TELSV"));
                sv.setEmailsv(rs.getString("EMAILSV"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();
            if (statement != null) statement.close();
            if (conn != null) conn.close();
        }
        
        return sv;
    }


}