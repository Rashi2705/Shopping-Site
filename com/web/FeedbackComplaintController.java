package com.web;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.model.Donation;
import com.model.FeedbackComplaint;

/**
 * Servlet implementation class FeedbackComplaintController
 */
public class FeedbackComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private UserDao userDao;

	    public void init() {
	        userDao = new UserDao();
	    }   
    public FeedbackComplaintController() {
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

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
        String emailf = request.getParameter("emailf");
       String query = request.getParameter("query");
    	 
    	 
    	FeedbackComplaint fc= new FeedbackComplaint();
    	 
    	 fc.setFid(new Random().nextInt(100000));
		fc.setFname(fname);
		fc.setLname(lname);
		fc.setEmailf(emailf);
		
		fc.setQuery(query);
		
		 userDao.saveFeedbackComplaint(fc);
		 	response.setContentType("text/html");
	       	PrintWriter pw=response.getWriter();
	       	pw.println("<script type=\"text/javascript\">");
	       	pw.println("alert('Feedback/complaint send successfully');");
	       	pw.println("</script>");
	       	pw.println("<a href=\"FeedbackComplaint.jsp\" >Back to  FeedbackComplaint page</a>");
		  
		
		
		
		
		
		
		
	}

}
