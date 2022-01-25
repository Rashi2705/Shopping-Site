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
import com.model.Wishlist;
import com.util.HibernetUtil;


public class Wishlist_delete_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//public static int productid2;
	 private UserDao userdao;
	 public void init() {
	        userdao = new UserDao();
	    }  

    
    public Wishlist_delete_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String ID = request.getParameter("PId");
		 Integer partidc=Integer.parseInt(ID);
	     	HttpSession Session=request.getSession();
	     	   Session.setAttribute("productid2", partidc);
	     	    Integer productid2=(Integer)Session.getAttribute("productid2"); 
		   System.out.println(productid2);
		   Wishlist wish=new Wishlist();
			Session s=HibernetUtil.getFactory().openSession();
			 
			Query q=s.createQuery("from Wishlist w where w.proid=:Id").setParameter("Id", productid2);
			List<Wishlist>list=q.list();
			for(Wishlist w:list) {
				userdao.DeleteWishlist(w);
	     
			}
		   response.sendRedirect("Wish.jsp");
	       
	}

}
