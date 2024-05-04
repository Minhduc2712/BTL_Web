package qlsv;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class slvSV1
 */
@WebServlet("/slvSV1")
public class slvSV1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public slvSV1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
        String action=request.getParameter("action").trim();
		String parmasv=request.getParameter("parmasv").trim().toUpperCase();
		String parhodemsv=request.getParameter("parhodemsv").trim();
		String partensv=request.getParameter("partensv").trim();
		String partelsv=request.getParameter("partelsv").trim();
		String paremailsv=request.getParameter("paremailsv").trim();
		
		try {
			if ("add".equals(action)) {	
				if((parmasv!=null && parmasv.length()>0) ||(partensv!=null && partensv.length()>0) || (parhodemsv!=null && parhodemsv.length()>0)  ){
					SV svobj = new SV();
					if(parmasv!=null && parmasv.length()>0) svobj.setMasv(parmasv);
					if(parhodemsv!=null && parhodemsv.length()>0) svobj.setHodem(parhodemsv);
					if(partensv!=null && partensv.length()>0) svobj.setTensv(partensv);
					if(partelsv!=null && partelsv.length()>0) svobj.setTelsv(partelsv);//System.out.println("partelsv="+partelsv);
					if(paremailsv!=null && paremailsv.length()>0) svobj.setEmailsv(paremailsv);
					svobj.themSV();

					request.setAttribute("masv", parmasv);
					request.setAttribute("hodemsv", parhodemsv);
					request.setAttribute("tensv", partensv);
					request.setAttribute("telsv", partelsv);
					request.setAttribute("emailsv", paremailsv);

					
					RequestDispatcher dispatcher = request.getRequestDispatcher("qlsv.jsp");
			        dispatcher.forward(request, response);
//			        response.sendRedirect("/qlsv/qlsv.jsp");
				}
	        } else if ("edit".equals(action)) {
	        	if((parmasv!=null && parmasv.length()>0) ||(partensv!=null && partensv.length()>0) || (parhodemsv!=null && parhodemsv.length()>0)  ){
					SV svobj = new SV();
					if(parmasv!=null && parmasv.length()>0) svobj.setMasv(parmasv);
					if(parhodemsv!=null && parhodemsv.length()>0) svobj.setHodem(parhodemsv);
					if(partensv!=null && partensv.length()>0) svobj.setTensv(partensv);
					if(partelsv!=null && partelsv.length()>0) svobj.setTelsv(partelsv);//System.out.println("partelsv="+partelsv);
					if(paremailsv!=null && paremailsv.length()>0) svobj.setEmailsv(paremailsv);
					
					SV sinhVien = SV.getSV(parmasv);
					if(sinhVien != null) {
						svobj.suaSV();
						
						request.setAttribute("masv", parmasv);
						request.setAttribute("hodemsv", parhodemsv);
						request.setAttribute("tensv", partensv);
						request.setAttribute("telsv", partelsv);
						request.setAttribute("emailsv", paremailsv);

						RequestDispatcher dispatcher = request.getRequestDispatcher("qlsv.jsp");
				        dispatcher.forward(request, response);
					} else {
		        		request.setAttribute("message", "Sinh viên chưa có trong CSDL");
		        		RequestDispatcher dispatcher = request.getRequestDispatcher("qlsv.jsp");
				        dispatcher.forward(request, response);
		        	}
						
				}
	        	
	        } else if ("delete".equals(action)) {
	        	if((parmasv!=null && parmasv.length()>0)){
					SV svobj = new SV();
					if(parmasv!=null && parmasv.length()>0) svobj.setMasv(parmasv);
					SV sinhVien = SV.getSV(parmasv);
					
					svobj.xoaSV();
					
					request.setAttribute("message", "Đã thực hiện xóa sinh viên");
					request.setAttribute("masv", sinhVien.getMasv());
	                request.setAttribute("hodemsv", sinhVien.getHodem());
	                request.setAttribute("tensv", sinhVien.getTensv());
	                request.setAttribute("telsv", sinhVien.getTelsv());
	                request.setAttribute("emailsv", sinhVien.getEmailsv());

					RequestDispatcher dispatcher = request.getRequestDispatcher("qlsv.jsp");
			        dispatcher.forward(request, response);
				}
	        }
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
	    

	}

}
