package Dao;

import data.ConnectionPool;
import data.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import model.Product;

public class ProductDao {

    public static ArrayList<Product> getProducts(String s)
    {
        ArrayList<Product> list = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from product where idCate like '%" + s + "%' and status=1";

        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage_link(rs.getString("image_link"));
                p.setPrice(rs.getDouble("price"));
                p.setDiscount(rs.getDouble("discount"));
                p.setIdCate(rs.getString("idCate"));
                p.setLeft(rs.getInt("amount_left"));
                p.setSold(rs.getInt("amount_sold"));
                p.setDate(rs.getDate("date"));
                p.setPriceDiscount(p.getPrice() - p.getPrice() * p.getDiscount() / 100);
                String nameCategory=CategoryDao.getNameCategory(rs.getString("idCate"));
                p.setNameCategory(nameCategory);
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return list;
    }

    public static ArrayList<Product> getAllProducts()
    {
        ArrayList<Product> list = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from product where status=1";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage_link(rs.getString("image_link"));
                p.setPrice(rs.getDouble("price"));
                p.setDiscount(rs.getDouble("discount"));
                p.setIdCate(rs.getString("idCate"));
                p.setLeft(rs.getInt("amount_left"));
                p.setDate(rs.getDate("date"));
                p.setSold(rs.getInt("amount_sold"));
                p.setPriceDiscount(p.getPrice() - p.getPrice() * p.getDiscount() / 100);
                String nameCategory=CategoryDao.getNameCategory(rs.getString("idCate"));
                p.setNameCategory(nameCategory);
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return list;
    }
    public static ArrayList<Product> getListProducts()
    {
        ArrayList<Product> list = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from product";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage_link(rs.getString("image_link"));
                p.setPrice(rs.getDouble("price"));
                p.setDiscount(rs.getDouble("discount"));
                p.setIdCate(rs.getString("idCate"));
                p.setLeft(rs.getInt("amount_left"));
                p.setDate(rs.getDate("date"));
                p.setSold(rs.getInt("amount_sold"));
                p.setPriceDiscount(p.getPrice() - p.getPrice() * p.getDiscount() / 100);
                String nameCategory=CategoryDao.getNameCategory(rs.getString("idCate"));
                p.setNameCategory(nameCategory);
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return list;
    }
    public static ArrayList<Product> getListHiddenProducts()
    {
        ArrayList<Product> list = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from product where status=0";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage_link(rs.getString("image_link"));
                p.setPrice(rs.getDouble("price"));
                p.setDiscount(rs.getDouble("discount"));
                p.setIdCate(rs.getString("idCate"));
                p.setLeft(rs.getInt("amount_left"));
                p.setDate(rs.getDate("date"));
                p.setSold(rs.getInt("amount_sold"));
                p.setPriceDiscount(p.getPrice() - p.getPrice() * p.getDiscount() / 100);
                String nameCategory=CategoryDao.getNameCategory(rs.getString("idCate"));
                p.setNameCategory(nameCategory);
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return list;
    }
    public static ArrayList<Product> getListByPage(ArrayList<Product> list1, int start, int end) {
        ArrayList<Product> list = new ArrayList<>();
        for (int i = start; i < end; i++) {
            list.add(list1.get(i));
        }
        return list;
    }

    public static void getListByNameA_Z(List<Product> list) {
        Collections.sort(list, new Comparator<Product>() {
            public int compare(Product o1, Product o2) {
                return o1.getName().compareTo(o2.getName());
            }
        });
    }

    public static void getListByNameZ_A(List<Product> list) {
        Collections.sort(list, new Comparator<Product>() {
            public int compare(Product o1, Product o2) {
                return o2.getName().compareToIgnoreCase(o1.getName());
            }
        });
    }

    public static void getListByPriceLowHight(List<Product> list) {
        Collections.sort(list, new Comparator<Product>() {
            public int compare(Product o1, Product o2) {
                return Double.compare(o1.getPriceDiscount(), o2.getPriceDiscount());
            }
        });
    }

    public static void getListByPriceHightLow(List<Product> list) {
        Collections.sort(list, new Comparator<Product>() {
            public int compare(Product o1, Product o2) {
                return Double.compare(o2.getPriceDiscount(), o1.getPriceDiscount());
            }
        });
    }

    public static void getListByMoi(List<Product> list) {
        Collections.sort(list, new Comparator<Product>() {
            public int compare(Product o1, Product o2) {
                return o2.getDate().compareTo(o1.getDate());
            }
        });
    }

    public static void getListByBanChay(ArrayList<Product> list) {
        Collections.sort(list, new Comparator<Product>() {
            public int compare(Product o1, Product o2) {
                return Integer.compare(o2.getSold(),o1.getSold());
            }
        });
    }
    public static void getListByKhuyenMai(ArrayList<Product> list) {
        Collections.sort(list, new Comparator<Product>() {
            public int compare(Product o1, Product o2) {
                return Double.compare(o2.getDiscount(),o1.getDiscount());
            }
        });
    }
    public static Product getProduct(String id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from product where id=?";
        Product p = new Product();
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage_link(rs.getString("image_link"));
                p.setPrice(rs.getDouble("price"));
                p.setDescription(rs.getString("description"));
                p.setDate(rs.getDate("date"));
                p.setDiscount(rs.getDouble("discount"));
                p.setIdCate(rs.getString("idCate"));
                p.setLeft(rs.getInt("amount_left"));
                p.setSold(rs.getInt("amount_sold"));
                p.setPriceDiscount(p.getPrice() - p.getPrice() * p.getDiscount() / 100);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return p;
    }
    public static ArrayList<Product> searchProduct(String name) {
        name=name.toLowerCase();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from product where name like '%"+name+"%'";
        ArrayList<Product>list=new ArrayList<>();
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage_link(rs.getString("image_link"));
                p.setPrice(rs.getDouble("price"));
                p.setDescription(rs.getString("description"));
                p.setDate(rs.getDate("date"));
                p.setDiscount(rs.getDouble("discount"));
                p.setIdCate(rs.getString("idCate"));
                p.setLeft(rs.getInt("amount_left"));
                p.setSold(rs.getInt("amount_sold"));
                p.setPriceDiscount(p.getPrice() - p.getPrice() * p.getDiscount() / 100);
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return list;
    }
    public static void updateProduct(int id, int quantity)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "update product set amount_sold=product.amount_sold+ ? , amount_left=amount_left-? where id=?";
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setInt(2, quantity);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
    }
    public static void updateProductAdmin(Product p)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "update product set name=? , price=? , idCate=? , description=?,"
                + " date=?, amount_left=? , amount_sold=? , discount=? where id=?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, p.getName());
            ps.setDouble(2,p.getPrice());
            ps.setString(3, p.getIdCate());
            ps.setString(4,p.getDescription());
            ps.setDate(5,p.getDate());
            ps.setInt(6,p.getLeft());
            ps.setInt(7,p.getSold());
            ps.setDouble(8,p.getDiscount());
            ps.setInt(9,p.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
    }
    public static void updateStatusProduct(int idProduct,int status)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "update product set status=? where id=?";
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, status);
            ps.setInt(2, idProduct);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
    }
    public static void addProduct(Product p) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "insert into product  (name,price,idCate,image_link,image_list,description,"
                + "date,amount_left,amount_sold,discount) values(?,?,?,?,?,?,?,?,?,?);";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, p.getName());
            ps.setDouble(2, p.getPrice());
            ps.setString(3, p.getIdCate());
            ps.setString(4, p.getImage_link());
            ps.setString(5, p.getImage_list());
            ps.setString(6, p.getDescription());
            ps.setDate(7, p.getDate());
            ps.setInt(8, p.getLeft());
            ps.setInt(9, p.getSold());
            ps.setDouble(10, p.getDiscount());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static Product checkProduct(String name, String idCate) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from product where name=? and idCate=?";
        Product p = new Product();
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, idCate);
            rs = ps.executeQuery();
            if (rs.next()) {
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage_link(rs.getString("image_link"));
                p.setPrice(rs.getDouble("price"));
                p.setDiscount(rs.getDouble("discount"));
                p.setIdCate(rs.getString("idCate"));
                p.setLeft(rs.getInt("amount_left"));
                p.setSold(rs.getInt("amount_sold"));
                p.setPriceDiscount(p.getPrice() - p.getPrice() * p.getDiscount() / 100);
                return p;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }

        return p;
    }

    public static void deleteProduct(int idProduct)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = "delete from product where id=?";
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, idProduct);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
    }
    public static ArrayList<Product> getListLeftProduct()
    {
        ArrayList<Product> list = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from product where product.amount_left > 0";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage_link(rs.getString("image_link"));
                p.setPrice(rs.getDouble("price"));
                p.setDiscount(rs.getDouble("discount"));
                p.setIdCate(rs.getString("idCate"));
                p.setLeft(rs.getInt("amount_left"));
                p.setDate(rs.getDate("date"));
                p.setSold(rs.getInt("amount_sold"));
                p.setPriceDiscount(p.getPrice() - p.getPrice() * p.getDiscount() / 100);
                String nameCategory=CategoryDao.getNameCategory(rs.getString("idCate"));
                p.setNameCategory(nameCategory);
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return list;
    }
    public static ArrayList<Product> getListSoldOutProduct()
    {
        ArrayList<Product> list = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from product where product.amount_left = 0";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage_link(rs.getString("image_link"));
                p.setPrice(rs.getDouble("price"));
                p.setDiscount(rs.getDouble("discount"));
                p.setIdCate(rs.getString("idCate"));
                p.setLeft(rs.getInt("amount_left"));
                p.setDate(rs.getDate("date"));
                p.setSold(rs.getInt("amount_sold"));
                p.setPriceDiscount(p.getPrice() - p.getPrice() * p.getDiscount() / 100);
                String nameCategory=CategoryDao.getNameCategory(rs.getString("idCate"));
                p.setNameCategory(nameCategory);
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePrepareStatement(ps);
            pool.freeConnection(connection);
        }
        return list;
    }
}
