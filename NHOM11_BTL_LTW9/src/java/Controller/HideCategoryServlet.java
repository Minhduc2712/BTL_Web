/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.CategoryDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Category;


public class HideCategoryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        String idCate=request.getParameter("idCate");
        ArrayList<Category>list=new ArrayList<>();
        if(idCate==null)
            list=CategoryDao.getAllCategorys(1);
        else{
            CategoryDao.updateStatusCategory(idCate,0);
            list=CategoryDao.getAllCategorys(1);
        }
        request.setAttribute("size",list.size());
        session.setAttribute("listCategory", list);
        request.getServletContext().getRequestDispatcher("/hideCategory.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
}
