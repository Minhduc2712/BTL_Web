/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.CartDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.User;

/**
 *
 * @author HP
 */
public class UpdateCartServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        ArrayList<Cart>listCart=(ArrayList<Cart>)session.getAttribute("listCart");
        int idCustomer=listCart.get(0).getIdCustomer();
        for(int i=0;i<listCart.size();i++)
        {
            int quantity=Integer.parseInt(request.getParameter(listCart.get(i).getIdProduct()+""));
            CartDAO.updateCart(listCart.get(i).getIdCustomer(),listCart.get(i).getIdProduct() , quantity,listCart.get(i).getPriceBuy());
        }
        listCart=CartDAO.getListCart(idCustomer);
        session.setAttribute("listCart", listCart);
        double total=CartDAO.getTotalMoney(listCart);
        session.setAttribute("totalCart", total);
        request.getServletContext().getRequestDispatcher("/cart.jsp").forward(request, response);
    }
}
