package com.web;

import java.io.IOException;
import java.util.Date;
import java.util.Random;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.model.Cart;

/**
 * Servlet implementation class cart_controller
 */
public class cart_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private UserDao userdao;
	 public void init() {
	        userdao = new UserDao();
	    }  
    
    public cart_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pid = request.getParameter("PId");
		String size=request.getParameter("size");
		String colour=request.getParameter("colour");
		String Quantity=request.getParameter("Quantity");
String sid=request.getParameter("SId");
		
		int amount=Integer.parseInt(request.getParameter("amount"));
		int final_price=Integer.parseInt(request.getParameter("final_price"));
	int discount=	Integer.parseInt(request.getParameter("discount"));
		 int id=Integer.parseInt(pid);
		int Sid=Integer.parseInt(sid);
		String product_title=request.getParameter("product_title");
		HttpSession Session=request.getSession();
		   String mail=  (String) Session.getAttribute("email_id");
		Cart cart=new Cart();
		cart.setCid(new Random().nextInt(100000));
		cart.setQuantity(Quantity);
		cart.setEmail(mail);
		cart.setProduct_id(id);
		cart.setColour(colour);
		cart.setSize(size);
		cart.setAddedDate(new Date());
cart.setSid(Sid);
cart.setProduct_title(product_title);
		cart.setDiscount(discount*Integer.parseInt(Quantity));
		cart.setF_amount(final_price*Integer.parseInt(Quantity));
		cart.setT_amount(amount*Integer.parseInt(Quantity));
		userdao.savecart(cart);
		response.sendRedirect("Cart.jsp");
	}

}
