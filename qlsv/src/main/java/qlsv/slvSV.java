package qlsv;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/slvSV")
//public class slvSV extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//
//    public slvSV() {
//        super();
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        SV obj = (SV) request.getAttribute("svobj");
//        System.out.println("doGet method called"); // Log message
//        response.getWriter().append("Served at: ").append(request.getContextPath());
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String parmasv = request.getParameter("parmasv");
//        String parhodemsv = request.getParameter("parhodemsv");
//        String partensv = request.getParameter("partensv");
//        
//        try {
//            if (parmasv != null && !parmasv.trim().isEmpty() ||
//                parhodemsv != null && !parhodemsv.trim().isEmpty() ||
//                partensv != null && !partensv.trim().isEmpty()) {
//
//                SV svobj = new SV();
//                if (parmasv != null && !parmasv.trim().isEmpty()) svobj.setMasv(parmasv.trim().toUpperCase());
//                if (parhodemsv != null && !parhodemsv.trim().isEmpty()) svobj.setHodem(parhodemsv.trim());
//                if (partensv != null && !partensv.trim().isEmpty()) svobj.setTensv(partensv.trim());
//
//                request.setAttribute("svobj", svobj);
//                RequestDispatcher dispatcher = request.getRequestDispatcher("/themsv.jsp");
//                dispatcher.forward(request, response);
//                System.out.println("doPost method called"); // Log message
//
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//}


@WebServlet("/slvSV")
public class slvSV extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public slvSV() {
	        super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     SV obj = (SV) request.getAttribute("svobj");
	     System.out.println("doGet method called"); // Log message
	     response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action=request.getParameter("action").trim();
        String parmasv=request.getParameter("parmasv").trim().toUpperCase();
		String parhodemsv=request.getParameter("parhodem").trim();
		String partensv=request.getParameter("partensv").trim();
		String partelsv=request.getParameter("partelsv").trim();
		String paremailsv=request.getParameter("paremailsv").trim();
		
        System.out.println("Yêu cầu thêm sinh viên đã được nhận.");
        if ("add".equals(action)) {
        	if((parmasv!=null && parmasv.length()>0) ||(partensv!=null && partensv.length()>0) || (parhodemsv!=null && parhodemsv.length()>0)  ){
				SV svobj = new SV();
				if(parmasv!=null && parmasv.length()>0) svobj.setMasv(parmasv);
				if(parhodemsv!=null && parhodemsv.length()>0) svobj.setHodem(parhodemsv);
				if(partensv!=null && partensv.length()>0) svobj.setTensv(partensv);
				if(partelsv!=null && partelsv.length()>0) svobj.setTelsv(partelsv);//System.out.println("partelsv="+partelsv);
				if(paremailsv!=null && paremailsv.length()>0) svobj.setEmailsv(paremailsv);
				try {
					svobj.themSV();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
//					RequestDispatcher dispatcher = request.getRequestDispatcher("student.jsp");
//			        dispatcher.forward(request, response);
				}
			}
        } else if ("edit".equals(action)) {
            // Xử lý chỉnh sửa sinh viên
        } else if ("delete".equals(action)) {
            // Xử lý xóa sinh viên
        }
        
        // Chuyển hướng về trang JSP sau khi xử lý yêu cầu

    }
}

