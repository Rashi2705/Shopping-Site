package com.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.dao.UserDao;
import com.model.Seller_Reg;
import com.model.User;
import com.util.HibernetUtil;


public class UpdateUserInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private UserDao userDao;
	// public String e_mail=Logincontroller.mail;
	
	 public void init() {
	        userDao = new UserDao();
	    }  
   
    public UpdateUserInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 register(request, response);
	}
	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//		 User userupdate = new User();
		 Session s=HibernetUtil.getFactory().openSession();
		 HttpSession Session=request.getSession();
		   String emal_id=  (String) Session.getAttribute("email_id");
		   
		Query q=s.createQuery("from User u where u.email_id=:email").setParameter("email", emal_id);
		List<User>list=q.list();
		for( User userupdate:list) {
			System.out.println(userupdate.getName());
		if(request.getParameter("mobile number")!="") {
			userupdate.setPhone_no(request.getParameter("mobile number"));
		}
		if(request.getParameter("full name")!=""&&request.getParameter("full name")!=null) {
			userupdate.setName(request.getParameter("full name"));
		}
		if(request.getParameter("gender")!="") {
			userupdate.setGender(request.getParameter("gender"));
		}
		if(request.getParameter("address")!="") {
			userupdate.setLocation(request.getParameter("address"));
		}
		if(request.getParameter("town")!="") {
			userupdate.setTown(request.getParameter("town"));
		}
		if(request.getParameter("city")!="") {
			userupdate.setCity(request.getParameter("city"));
		}
		
		if(request.getParameter("state")!="") {
			userupdate.setState(request.getParameter("state"));
		}
		if(request.getParameter("pincode")!="") {
			userupdate.setPincode(request.getParameter("pincode"));
		}
		if(request.getParameter("alt mobile no")!="") {
			userupdate.setAlt_mobileno(request.getParameter("alt mobile no"));
		}
		if(request.getParameter("alt location")!="") {
			userupdate.setAlt_location(request.getParameter("alt location"));
		}
		
	
		if(userDao.update(userupdate)) {

	        RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
	        dispatcher.forward(request, response);
	
		}
		else {
			response.setContentType("text/html");
        	PrintWriter pw=response.getWriter();
        	pw.println("<script type=\"text/javascript\">");
        	pw.println("alert('This email id is already registered plz try another email-id');");
        	pw.println("</script>");
		}
		      
	}
	}
}

