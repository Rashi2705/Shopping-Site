package com.web;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;

import com.model.Donation;

public class Donatecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	 private UserDao userDao;

	    public void init() {
	        userDao = new UserDao();
	    }   
    public Donatecontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        long mno = Long.parseLong(request.getParameter("mno"));
        String addr = request.getParameter("addr");
        long  pincode =Long.parseLong( request.getParameter("pincode"));
    	 String state = request.getParameter("state");
    	String town = request.getParameter("town");
    	 String city = request.getParameter("city");
    	String donationtype = request.getParameter("donationtype");
    	 String donatewhat = request.getParameter("donatewhat");
    	 String notes = request.getParameter("notes");
    	 
    	 
    	 Donation donation = new Donation();
    	 
    	 donation.setDid(new Random().nextInt(100000));
		donation.setFname(fname);
		donation.setLname(lname);
		donation.setEmail(email);
		donation.setMno(mno);
		donation.setAddr(addr);
		donation.setPincode(pincode);
		donation.setState(state);
		donation.setTown(town);
		donation.setCity(city);
		donation.setDonationtype(donationtype);
		donation.setDonatewhat(donatewhat);
		donation.setNotes(notes);
		
		 userDao.saveDonation(donation);
		 
		   RequestDispatcher dispatcher = request.getRequestDispatcher("afterthriftjsp.jsp");
	        dispatcher.forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
		
	
	}

}
