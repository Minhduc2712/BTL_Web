
package Controller;

import Dao.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;

public class SearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        String search=request.getParameter("search");
        ArrayList<Product>list=ProductDao.searchProduct(search);
        int size = list.size();
        int num = (size % 15 == 0 ? (size / 15) : ((size / 15) + 1));
        session.setAttribute("listAll", list);
        session.setAttribute("size", list.size());
        request.getServletContext().getRequestDispatcher("/shop.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
}
