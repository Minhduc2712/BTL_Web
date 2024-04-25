/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import model.Product;
import Dao.*;
import java.io.File;
import java.sql.Date;

/**
 *
 * @author Admin
 */
@MultipartConfig
public class AddProductForAdminServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name  = request.getParameter("name");
        String price_raw = request.getParameter("price");
        String idCate = request.getParameter("idCate");
        String description = request.getParameter("description");
        String date = request.getParameter("date");
        String amount_left_raw = request.getParameter("amount_left");
        String discount_raw = request.getParameter("discount");
        Part part = request.getPart("image_link");
        
        Product p = new Product();
        try{
            double price = Double.parseDouble(price_raw);
            double discount  = Double.parseDouble(discount_raw);
            int amount_left = Integer.parseInt(amount_left_raw);
            String path = "assets/img/"  + part.getSubmittedFileName();
            p.setName(name);
            p.setPrice(price);
            p.setIdCate(idCate);
            p.setDescription(description);
            p.setDate(Date.valueOf(date));
            p.setLeft(amount_left);
            p.setSold(0);
            p.setDiscount(discount);
            p.setImage_link(path);
            p.setImage_list("assets/img/tui/tui.png");           
            ProductDao.addProduct(p);
            response.sendRedirect("shop"); 
        }catch(NumberFormatException e){
            System.out.println(e);
        }
        
    }
}
