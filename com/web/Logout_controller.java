package com.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.model.User;
import com.util.HibernetUtil;
import com.web.Logincontroller;
/**
 * Servlet implementation class Logout_controller
 */
public class Logout_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Logout_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HibernetUtil hib=new HibernetUtil();
//		hib.closefactory();

        
        
    	
	     response.setContentType("text/html");  
         PrintWriter out=response.getWriter();  
         HttpSession session=request.getSession();       
         session.removeAttribute("email_id");
         session.removeAttribute("password");

    
      
         session.invalidate();  
       
         
         response.sendRedirect("LogoutImplement.jsp");
           
         out.close(); 
	}

}
