package com.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Perticular_page_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//public static int proid;
    public Perticular_page_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID = request.getParameter("Id");
		Integer IDd=Integer.parseInt(ID);
        	HttpSession Session=request.getSession();
        	   Session.setAttribute("proid", IDd);
        	    Integer proid=(Integer)Session.getAttribute("proid");    
        	      
	
		//   proid=Integer.parseInt(ID);
		   System.out.println("it is:"+proid);
	response.sendRedirect("particularproduct.jsp");
	        
	
	}

}
