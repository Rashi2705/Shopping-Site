package com.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.query.Query;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.Random;

import com.dao.JavaBase64;
import com.dao.UserDao;
import com.model.Admin;
import com.model.EmailMessage;
import com.model.EmailUtility;

import com.model.User;
import com.util.HibernetUtil;

//import jakarta.servlet.*;
//import jakarta.servlet.http.*;

/**
 * Servlet implementation class Userregcontroller
 */
public class Userregcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 private UserDao userDao;

	    public void init() {
	        userDao = new UserDao();
	    }   
    public Userregcontroller() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		 response.setContentType("text/html;charset=UTF-8");
	        try (PrintWriter out = response.getWriter()) {
			JavaBase64 encode=new JavaBase64();

		String name = request.getParameter("name");
        String email_id = request.getParameter("email_id");
        String password = request.getParameter("password");
    
      
        
   	
       if(userDao.validateEmail(email_id)) {
       	
       	response.setContentType("text/html");
       	PrintWriter pw=response.getWriter();
       	pw.println("<script type=\"text/javascript\">");
       	pw.println("alert('This email id is already registered plz try another email-id');");
       	pw.println("</script>");
       	pw.println("<a href=\"login.jsp\" >Back to Login page</a>");
       }
       else {
        User user = new User();
        user.setName(name);
        user.setEmail_id(email_id);
    
        String encodedpass= encode.Encrypt(password);
	   
	        user.setPassword(encodedpass);
user.setAddedDate(new Date());
user.setId(new Random().nextInt(100000));

        userDao.saveUser(user);
        Session s=HibernetUtil.getFactory().openSession();
           
             EmailMessage emailbean = new EmailMessage();
 		    Query qr=s.createQuery("from User u where u.email_id=:email_id").setParameter("email_id", email_id);
 		    
 			List<User>listt=qr.list();
 			for( User pswd:listt) {	
 				
 		    emailbean.setTo(email_id);
 		    System.out.println(email_id);
 		    emailbean.setSubject("Registration done successfully");
 		    emailbean.setMessage("Hii "+ pswd.getName() + " You have successfully registered . Please login to continue shopping") ;
 		    try {
 		    	
 		      EmailUtility.sendEmail(emailbean);
 		     

 		      
 		    } catch (Exception e) {
 		      
 		    }
 			}
			
           
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
             dispatcher.forward(request, response);
    }}

}
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    register(request, response);
}
}