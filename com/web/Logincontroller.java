package com.web;

import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
//import com.model.User;

//import jakarta.servlet.*;
//import jakarta.servlet.http.*;

public class Logincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//  public static String mail;
	private UserDao loginDaoUser;
	private UserDao loginDaoAdmin;

  public void init() {
      loginDaoUser = new UserDao();
      loginDaoAdmin = new UserDao();

  }
  public Logincontroller() {
      super();
      
  }
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 response.sendRedirect("login.jsp");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 		        String email_id = request.getParameter("email_id");
		        String password=request.getParameter("password");
		       
		      
	        	 

		        
		      
		        if (loginDaoAdmin.validateadmin(email_id, password)) {
		        	HttpSession Session=request.getSession();
		        	   Session.setAttribute("email_id", email_id);
		        	      
		        	      
		        	      Session.setAttribute("password", password);
		        	      response.sendRedirect("AdminDash.jsp");
		           
		        }
		        else {
		       
		        	 if (loginDaoUser.validate(email_id, password)) {
		        	      HttpSession Session=request.getSession();
		        	      Session.setAttribute("email_id", email_id);
		        	      
		        	      
		        	      Session.setAttribute("password", password);
		        	   
		        			         response.sendRedirect("afterlogin.jsp");
		        			     
		        			           
		           
		        } 		    }}

	
	

}


