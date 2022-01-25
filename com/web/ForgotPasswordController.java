package com.web;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.dao.JavaBase64;
import com.dao.UserDao;
import com.model.EmailMessage;
import com.model.EmailUtility;
import com.model.User;
import com.util.HibernetUtil;
import java.io.*;
/**
 * Servlet implementation class ForgotPasswordController
 */
public class ForgotPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
	 
	    Session s=HibernetUtil.getFactory().openSession();
	    String email_id = request.getParameter("email_id");
	    EmailMessage emailbean = new EmailMessage();
	    Query q=s.createQuery("from User u where u.email_id=:email_id").setParameter("email_id", email_id);
	    
		List<User>list=q.list();
		for( User pswd:list) {
			System.out.println(pswd.getPassword());
		JavaBase64 secure=new JavaBase64();
	    emailbean.setTo(email_id);
	    System.out.println(email_id);
	    emailbean.setSubject("Forgot Password , Here is your password");
	    emailbean.setMessage("Hii "+ pswd.getName() + " Your SHOPPE & SMILE password is : " + secure.Decrypt(pswd.getPassword()));}
	    try {
	    	
	      EmailUtility.sendEmail(emailbean);
	     

	      
	    } catch (Exception e) {
	      
	    }
	    response.sendRedirect("forgotpassword.jsp");
	  }
	}


