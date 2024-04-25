/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author HP
 */
public class RegisterSevlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        request.getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String username=request.getParameter("username");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
        String remember = request.getParameter("rem");
        String url="";
        if(UserDAO.existUser(email))
        {
            request.setAttribute("error", "email đã tồn tại");
            url="/register.jsp";
        }
        else
        {
            UserDAO.addUser(username, email, password, phone, address);
            User u=new User(username, email, password, phone, address,0);
            HttpSession session=request.getSession();
            session.setAttribute("user", u);
            if (remember != null) {
                Cookie cemail = new Cookie("cmail", email);
                Cookie cpassword = new Cookie("cpassword", password);
                Cookie crem = new Cookie("crem", remember);
                cemail.setMaxAge(24*365*2 * 60 * 60);
                cpassword.setMaxAge(24*365*2 * 60 * 60);
                crem.setMaxAge(24*365*2 * 60 * 60);
                cemail.setPath("/");
                cpassword.setPath("/");
                crem.setPath("/");
                response.addCookie(cemail);
                response.addCookie(cpassword);
                response.addCookie(crem);
            }
            url="/index.jsp";
        }
        request.getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}
