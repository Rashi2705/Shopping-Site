package com.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.dao.JavaBase64;
import com.model.EmailMessage;
import com.model.EmailUtility;
import com.model.Seller_Reg;
import com.model.User;
import com.util.HibernetUtil;

/**
 * Servlet implementation class SellerForgotPasswordController
 */
public class SellerForgotPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerForgotPasswordController() {
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
		 
	    Session s=HibernetUtil.getFactory().openSession();
	    String S_email = request.getParameter("S_email");
	
	    EmailMessage emailbean = new EmailMessage();
	    Query q=s.createQuery("from Seller_Reg u where u.S_email=:S_email").setParameter("S_email",S_email);
	    
		List<Seller_Reg>list=q.list();
		for( Seller_Reg pswd:list) {
		
			JavaBase64 secure=new JavaBase64();
	    emailbean.setTo(S_email);
	    
	   
	    emailbean.setSubject("Hey seller Forgot Password , Here is your Seller Account password");
	    emailbean.setMessage("Hii "+ pswd.getName() + " Your SHOPPE & SMILE Seller Account password is : " +  secure.Decrypt(pswd.getS_password())+" for seller Account "+ pswd.getS_email());
		
			}
	    try {
	    	
	      EmailUtility.sendEmail(emailbean);
	     

	      
	    } catch (Exception e) {
	      
	    }
	    response.sendRedirect("Sellerforgotpassword.jsp");
	  }
	}
