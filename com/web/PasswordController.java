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
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.dao.JavaBase64;
import com.dao.UserDao;
import com.model.User;
import com.util.HibernetUtil;


public class PasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       UserDao pass=new UserDao();
   //   String email=Logincontroller.mail;
    
    public PasswordController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		check(request,response);
	}
	private void check(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JavaBase64 secure=new JavaBase64();
		String Password=request.getParameter("password");
		String password= secure.Encrypt(Password);
		 HttpSession Session=request.getSession();
		   String emal_id=  (String) Session.getAttribute("email_id");
		 Transaction transaction = null;
	        User user = null;
	        try (Session session = HibernetUtil.getFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // get an user object
	            user = (User) session.createQuery("FROM User E WHERE E.email_id = :email_id").setParameter("email_id", emal_id)
	                .uniqueResult();

	            if (user != null && user.getPassword().equals(password)) {
	            	 RequestDispatcher dispatcher = request.getRequestDispatcher("ChangePassword.jsp");
	 		        dispatcher.forward(request, response);
	            }
	            else
	            	System.out.println("fail");
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	           
	            e.printStackTrace();
	        }
	     
		
		
		}
	
		
	}


