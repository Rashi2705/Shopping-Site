package com.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class validChechController
 */
public class validChechController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public validChechController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	      //  request.getRequestDispatcher("link.html").include(request, response);  
	          
	        HttpSession session=request.getSession(false);  
	        if(session!=null){  
	        String email_id=(String)session.getAttribute("email_id");  
	        
	        System.out.println(email_id);
	        response.sendRedirect("afterlogin.jsp"); 
	        }  
	        else{  
	            out.print("Please login first");  
	            request.getRequestDispatcher("login.jsp").include(request, response);  
	        }  
	        out.close();  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
