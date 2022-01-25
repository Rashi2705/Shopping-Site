package com.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Search_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
     public static String search;
    public Search_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		search=request.getParameter("search").trim();
		  RequestDispatcher dispatcher = request.getRequestDispatcher("search_product_display.jsp");
	        dispatcher.forward(request, response);
	}

}
