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
public class HideProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        String idProduct=request.getParameter("idProduct");
        ArrayList<Product>list=new ArrayList<>();
        if(idProduct==null)
            list=ProductDao.getAllProducts();
        else{
            ProductDao.updateStatusProduct(Integer.parseInt(idProduct),0);
            list=ProductDao.getAllProducts();
        }
        request.setAttribute("size",list.size());
        session.setAttribute("listProduct", list);
        request.getServletContext().getRequestDispatcher("/hideproduct.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
