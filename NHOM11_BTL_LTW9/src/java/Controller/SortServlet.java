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
public class SortServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        String orderby=request.getParameter("orderby");
        ArrayList<Product>list=(ArrayList<Product>) session.getAttribute("list");
        if(orderby.equalsIgnoreCase("1"))
            ProductDao.getListByKhuyenMai(list);
        else if(orderby.equalsIgnoreCase("2"))
            ProductDao.getListByNameA_Z(list);
        else if(orderby.equalsIgnoreCase("3"))
            ProductDao.getListByNameZ_A(list);
        else if(orderby.equalsIgnoreCase("4"))
            ProductDao.getListByPriceHightLow(list);
        else if(orderby.equalsIgnoreCase("5"))
            ProductDao.getListByPriceLowHight(list);
        else if(orderby.equalsIgnoreCase("6"))
            ProductDao.getListByMoi(list);
        else if(orderby.equalsIgnoreCase("7"))
            ProductDao.getListByBanChay(list);
        int size=list.size();
        int num=(size%15==0?(size/15):((size/15)+1));
        int page=1;
        int start,end;
        start=(page-1)*15;
        end=Math.min(page*15,size);
        List<Product>listAll=ProductDao.getListByPage(list, start, end);
        session.setAttribute("listAll", listAll);
        session.setAttribute("orderby", orderby);
        session.setAttribute("page", page);
        request.getServletContext().getRequestDispatcher("/shop.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
