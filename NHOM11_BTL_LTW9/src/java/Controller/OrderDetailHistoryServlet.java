/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.OrderDAO;
import Dao.OrderDetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.OrderShop;
import model.OrderShopDetail;

/**
 *
 * @author HP
 */
public class OrderDetailHistoryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idOrder=Integer.parseInt(request.getParameter("idOrder"));
        ArrayList<OrderShopDetail> listOrderDetail=OrderDetailDAO.getListOrderDetail(idOrder);
        OrderShop order=OrderDAO.getOrder(idOrder);
        HttpSession session=request.getSession();
        session.setAttribute("order", order);
        session.setAttribute("listOrderDetail", listOrderDetail);
        
        request.getServletContext().getRequestDispatcher("/orderDetailHistory.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
