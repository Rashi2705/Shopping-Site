package com.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class product_id_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
  // public static int productid;
  // public static String USection;
    public product_id_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   String ID = request.getParameter("Id");
		   String section=request.getParameter("section");
		   Integer productid =Integer.parseInt(ID);
       	HttpSession Session=request.getSession();
       	   Session.setAttribute("productid", productid); 
       	   Session.setAttribute("USection", section); 
		//   productid=Integer.parseInt(ID);
		 //  USection=section;
		  // System.out.println(productid);
       	  
       	  
		   RequestDispatcher dispatcher = request.getRequestDispatcher("product_update.jsp");
	        dispatcher.forward(request, response);
	
	}

}
