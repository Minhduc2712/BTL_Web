
package Controller;

import Dao.CategoryDao;
import Dao.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Category;
import model.Product;

public class UpdateProductServlet extends HttpServlet {

protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idProduct=request.getParameter("idProduct");
        String url="/listProductUpdate.jsp";
        HttpSession session=request.getSession();
        if(idProduct==null)
        {
            ArrayList<Product>list=ProductDao.getListProducts();
            session.setAttribute("listProductUpdate",list);
            session.setAttribute("size",list.size());
            url="/listProductUpdate.jsp";
        }
        else
        {
            Product p=ProductDao.getProduct(idProduct);
            ArrayList<Category>listCategory=CategoryDao.getCategorys();
            url="/updateProduct.jsp";
            session.setAttribute("product",p);
            session.setAttribute("listCategory",listCategory);
        }
        request.getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        Product p=(Product) session.getAttribute("product");
        String name=request.getParameter("name");
        Double price=Double.parseDouble(request.getParameter("price"));
        String idCate=request.getParameter("idCate");
        String description=request.getParameter("description");
        Date date=Date.valueOf(request.getParameter("date"));
        int left=Integer.parseInt(request.getParameter("amount_left"));
        int sold=Integer.parseInt(request.getParameter("amount_sold"));
        double discount=Double.parseDouble(request.getParameter("discount"));
        p.setName(name);
        p.setPrice(price);
        p.setIdCate(idCate);
        p.setDescription(description);
        p.setDate(date);
        p.setLeft(left);
        p.setSold(sold);
        p.setDiscount(discount);
        ProductDao.updateProductAdmin(p);
        response.sendRedirect("updateproduct"); 
    }
}
