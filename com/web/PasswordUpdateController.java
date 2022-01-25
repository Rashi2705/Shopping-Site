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
import com.model.User;
import com.util.HibernetUtil;


public class PasswordUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    UserDao password =new UserDao();
    //String email=Logincontroller.mail;
    public PasswordUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JavaBase64 secure=new JavaBase64();
		String Newpassword=request.getParameter("new password");
		String newpassword= secure.Encrypt(Newpassword);
		 Session s=HibernetUtil.getFactory().openSession();
		 HttpSession Session=request.getSession();
		   String email=  (String) Session.getAttribute("email_id");
		
			Query q=s.createQuery("from User u where u.email_id=:email").setParameter("email", email);
			List<User>list=q.list();
			for( User userupdate:list) {
				userupdate.setPassword(newpassword);
				if(password.update(userupdate)) {

			        RequestDispatcher dispatcher = request.getRequestDispatcher("userprofile.jsp");
			        dispatcher.forward(request, response);
			
				}
				else {
					System.out.println("fail");
				}
			}
	}
	}


