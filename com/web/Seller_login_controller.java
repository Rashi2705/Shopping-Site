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

import com.dao.UserDao;
import com.model.Product_Details;
import com.model.Seller_Reg;
import com.util.HibernetUtil;


public class Seller_login_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// public static int seller_id;
	int IDd;
	//  public static String mail=Logincontroller.mail;
			private UserDao loginDaoUser;
			 public void init() {
			      loginDaoUser = new UserDao();
			      

			  }
    public Seller_login_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("sellerlogin.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

        String S_email = request.getParameter("S_email");
        String S_password = request.getParameter("S_password");
    
        Product_Details product=new Product_Details();
		Session s=HibernetUtil.getFactory().openSession();
		HttpSession Session=request.getSession();
		   String mail=  (String) Session.getAttribute("email_id");
		Query q=s.createQuery("from Seller_Reg s where s.email=:email").setParameter("email", mail);
		List<Seller_Reg>list=q.list();
		for(Seller_Reg sel:list) {
    IDd=sel.getSid();
     
		}
        
		  Session.setAttribute("seller_id", IDd);
	   	    Integer seller_id=(Integer)Session.getAttribute("seller_id");    
	   	   
		
	   	 System.out.println("it is seller:"+seller_id);
      
        if (loginDaoUser.validateseller(S_email, S_password)) {

           RequestDispatcher dispatcher = request.getRequestDispatcher("SellerDash.jsp");
        dispatcher.forward(request, response);
           
        } 
	        else {
	        	System.out.println("fail");
	        }
	       
	        
	}

}
