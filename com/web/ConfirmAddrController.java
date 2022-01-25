package com.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.model.User;
import com.util.HibernetUtil;

/**
 * Servlet implementation class ConfirmAddrController
 */
public class ConfirmAddrController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmAddrController() {
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
		 HttpSession Session=request.getSession();
		   String emal_id=  (String) Session.getAttribute("email_id");
		   
		Query q=s.createQuery("from User u where u.email_id=:email").setParameter("email", emal_id);
		List<User>list=q.list();
		
		for( User useraddr:list) {
		if((useraddr.getPhone_no()!= null) && (useraddr.getLocation() != null )&& (useraddr.getTown()!=null )&&(useraddr.getCity()!=null)&&(useraddr.getState()!=null)&&( useraddr.getPincode()!=null))
		{	response.sendRedirect("makepayment.jsp");}
		else {
			response.sendRedirect("editaddrcart.jsp");
		
		}
		}
	}

}
