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
import com.model.Cart;
import com.model.Product_Details;
import com.util.HibernetUtil;


public class cart_delete_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//public static int cartid;
	 private UserDao userdao;
	 public void init() {
	        userdao = new UserDao();
	    }  

    public cart_delete_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String ID = request.getParameter("CId");
	 Integer cartidc=Integer.parseInt(ID);
     	HttpSession Session=request.getSession();
     	   Session.setAttribute("cartid", cartidc);
     	    Integer cartid=(Integer)Session.getAttribute("cartid"); 
		
		   System.out.println(cartid);
		 
			Session s=HibernetUtil.getFactory().openSession();
			 
			Query q=s.createQuery("from Cart c where c.cid=:Id").setParameter("Id", cartid);
			List<Cart>list=q.list();
			for(Cart c:list) {
				userdao.DeleteCart(c);
	     
			}
		   RequestDispatcher dispatcher = request.getRequestDispatcher("Cart.jsp");
	        dispatcher.forward(request, response);
	}

}
