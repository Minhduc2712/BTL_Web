/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author HP
 */
public class DeleteProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idProduct = Integer.parseInt(request.getParameter("idProduct"));
        ProductDao.deleteProduct(idProduct);
        HttpSession session = request.getSession();
        String idCate =(String)session.getAttribute("idCate");
        ArrayList<Product> list;
        if(idCate==null)
            list = ProductDao.getAllProducts();
        else
            list = ProductDao.getProducts(idCate);
        int size = list.size();
        int num = (size % 15 == 0 ? (size / 15) : ((size / 15) + 1));
        int page = 1;
        int start, end;
        start = (page - 1) * 15;
        end = Math.min(page * 15, size);
        List<Product> listAll = ProductDao.getListByPage(list, start, end);
        session.setAttribute("listAll", listAll);
        session.setAttribute("size", list.size());
        request.getServletContext().getRequestDispatcher("/shop.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
