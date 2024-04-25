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
public class DeleteCartServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String idProduct=request.getParameter("idProduct");
        HttpSession session=request.getSession();
        User u=(User)session.getAttribute("user");
        CartDAO.deleteProductInCart(u.getId(),Integer.parseInt(idProduct));
        ArrayList<Cart> listCart=CartDAO.getListCart(u.getId());
        session.setAttribute("listCart",listCart);
        double total=CartDAO.getTotalMoney(listCart);
        session.setAttribute("totalCart", total);
        request.getServletContext().getRequestDispatcher("/cart.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
}
