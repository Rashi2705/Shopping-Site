package com.web;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.model.Cart;
import com.model.Wishlist;

public class Wishlist_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userdao;
	 public void init() {
	        userdao = new UserDao();
	    }  
   
    public Wishlist_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("PId");
		 int id=Integer.parseInt(pid);
		 HttpSession Session=request.getSession();
		   String emal_id=  (String) Session.getAttribute("email_id");
		
		
		Wishlist wish=new Wishlist();
		wish.setWishid(new Random().nextInt(100000));
		wish.setEmail(emal_id);
		wish.setProid(id);
		userdao.savewishlist(wish);
		response.sendRedirect("Wish.jsp");
	}

}
