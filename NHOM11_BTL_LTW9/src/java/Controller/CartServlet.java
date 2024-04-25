/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.CartDAO;
import Dao.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Product;
import model.User;

/**
 *
 * @author HP
 */
public class CartServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        User u=(User) session.getAttribute("user");
        String url="";
        if(u==null)
            url="/login.jsp";
        else
        {
            String idProduct=request.getParameter("idProduct");
            if (idProduct != null) {
                Product product = ProductDao.getProduct(idProduct);
                if (CartDAO.checkProduct(u.getId(), Integer.parseInt(idProduct))) {
                    CartDAO.updateCart(u.getId(),Integer.parseInt(idProduct), 1, product.getPriceDiscount());
                } else {
                    CartDAO.addCart(new Cart(u.getId(), Integer.parseInt(idProduct), 1, product.getPriceDiscount()));
                }
            }
            ArrayList<Cart> listCart=CartDAO.getListCart(u.getId());
            session.setAttribute("listCart",listCart);
            double total=CartDAO.getTotalMoney(listCart);
            session.setAttribute("totalCart", total);
            url="/cart.jsp";
        }
        request.getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String idPro=request.getParameter("idProduct");
        Product p=ProductDao.getProduct(idPro);
        int quantity=Integer.parseInt(request.getParameter("quantity"));
        double priceBuy=p.getPriceDiscount();
        HttpSession session=request.getSession();
        User u=(User) session.getAttribute("user");
        String url="";
        if(u==null)
            url="/login.jsp";
        else
        {
            int idCustomer=u.getId();
            int idProduct=Integer.parseInt(idPro);
            Cart c=new Cart(idCustomer, idProduct, quantity, priceBuy);
            if(CartDAO.checkProduct(idCustomer, idProduct))
                CartDAO.updateCart(idCustomer, idProduct, quantity, priceBuy);
            else
                CartDAO.addCart(c);
            ArrayList<Cart> listCart=CartDAO.getListCart(idCustomer);
            session.setAttribute("listCart",listCart);
            double total=CartDAO.getTotalMoney(listCart);
            session.setAttribute("totalCart", total);
            url="/cart.jsp";
        }
        request.getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}
