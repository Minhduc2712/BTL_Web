/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.CartDAO;
import Dao.OrderDAO;
import Dao.OrderDetailDAO;
import Dao.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.User;
import model.OrderShop;
import model.OrderShopDetail;

/**
 *
 * @author HP
 */
public class CheckoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        User u=(User)session.getAttribute("user");
        String url="";
        if(u==null)
            url="/login.jsp";
        else
        {
            ArrayList<Cart> listCart=CartDAO.getListCart(u.getId());
            session.setAttribute("listCart",listCart);
            double totalCart=CartDAO.getTotalMoney(listCart);
            double fee=20000;
            if(totalCart>=500000 || totalCart==0)
                fee=0;
            double total=fee+totalCart;
            session.setAttribute("fee", fee);
            session.setAttribute("totalCart", totalCart);
            session.setAttribute("total",total);
        }
        request.getServletContext().getRequestDispatcher("/checkout.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
        String note=request.getParameter("note");
        String payment=request.getParameter("payment");
        HttpSession session=request.getSession();
        User u=(User)session.getAttribute("user");
        double fee=(Double)session.getAttribute("fee");
        ArrayList<Cart> listCart=CartDAO.getListCart(u.getId());
        Date date=new Date(System.currentTimeMillis());
        Time time=new Time(System.currentTimeMillis());
        OrderShop oder =new OrderShop(u.getId(), phone, address, payment, note, date, time);
        oder.setTotalMoney(CartDAO.getTotalMoney(listCart)+fee);
        OrderDAO.addOrder(oder);
        int idOrderShop=OrderDAO.searchOrder(u.getId(), date, time);
        for(int i=0;i<listCart.size();i++)
        {
            OrderShopDetail orderdetail=new OrderShopDetail(listCart.get(i).getIdProduct(), idOrderShop,listCart.get(i).getQuantity());
            
            OrderDetailDAO.addOrderDetail(orderdetail);
            ProductDao.updateProduct(listCart.get(i).getIdProduct(),listCart.get(i).getQuantity());
            CartDAO.deleteProductInCart(u.getId(),listCart.get(i).getIdProduct());
        }
        listCart=CartDAO.getListCart(u.getId());
        session.setAttribute("listCart",listCart);
        request.setAttribute("mark","1");
        request.getServletContext().getRequestDispatcher("/checkout.jsp").forward(request, response);
    }   
}
