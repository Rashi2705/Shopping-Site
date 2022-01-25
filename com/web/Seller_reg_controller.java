package com.web;

import java.io.IOException;

import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.dao.JavaBase64;
import com.dao.UserDao;
import com.model.EmailMessage;
import com.model.EmailUtility;
import com.model.Seller_Reg;
import com.model.User;

import com.util.HibernetUtil;


public class Seller_reg_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private UserDao sellerDao;
	 String name,email;

	    public void init() {
	        sellerDao = new UserDao();
	    }  
   
    public Seller_reg_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			register(request, response);
	}
		private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
			Session s=HibernetUtil.getFactory().openSession();
			 HttpSession Session=request.getSession();
			   String e_mail=  (String) Session.getAttribute("email_id");
			
			  Seller_Reg seller = new Seller_Reg();
                        JavaBase64 secure=new JavaBase64();
			Query q=s.createQuery("from User u where u.email_id=:email").setParameter("email", e_mail);
			List<User>list=q.list();
			for(User user:list) {
	      
	        name = user.getName();
	         email = e_mail;
			}
              String pass=request.getParameter("S_password");
	        String store_name = request.getParameter("store_name");
	        String S_email = request.getParameter("S_email");
	         String S_password = secure.Encrypt(pass);
	        String store_address = request.getParameter("store_address");
	        String State=request.getParameter("state");
	        String Town=request.getParameter("town");
	        String Pincode=request.getParameter("pincode");
	        String City=request.getParameter("city");
	        String company_name=request.getParameter("company_name");
	        
	       seller.setName(name);
	       seller.setEmail(email);
	       seller.setS_email(S_email);
	       seller.setS_password(S_password);
	       seller.setCompany_name(company_name);
	      seller.setCity(City);
	      seller.setState(State);
	      seller.setTown(Town);
	      seller.setPincode(Pincode);
	    seller.setStore_address(store_address);
	      seller.setStore_name(store_name);
	   int sid = seller.setSid(new Random().nextInt(100000));
	   
	      sellerDao.saveSeller(seller);
	      Session.setAttribute("sid", sid);
	      
	      EmailMessage emailbean = new EmailMessage();
	      Query qr=s.createQuery("from Seller_Reg u where u.S_email=:S_email").setParameter("S_email",S_email);
		    
			List<Seller_Reg>listt=qr.list();
			for( Seller_Reg pswd:listt) {
			
				
		    emailbean.setTo(S_email);
		    System.out.println(S_email);
		    emailbean.setSubject("Welcome to Shoppe & Smile.");
		    emailbean.setMessage("Hii "+ pswd.getName() + " You have successfully registered as a seller . With store name "+pswd.getStore_name()) ;
		    try {
		    	
		      EmailUtility.sendEmail(emailbean);
		     

		      
		    } catch (Exception e) {
		      
		    }

	    
	       
	        RequestDispatcher dispatcher = request.getRequestDispatcher("sellerlogin.jsp");
	        dispatcher.forward(request, response);
	        }
	    

	}
}

