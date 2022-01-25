package com.web;

import java.io.IOException;
import java.io.PrintWriter;
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
import com.model.Thrift_product;
import com.model.User;
import com.util.HibernetUtil;

/**
 * Servlet implementation class UpdateProductInfoController
 */
public class UpdateProductInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;
	// public int pid=product_id_controller.productid;
	// public String sec=product_id_controller.USection;
	    public void init() {
	        userDao = new UserDao();
	    } 
    public UpdateProductInfoController() {
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
//		 User userupdate = new User();
		 HttpSession Session=request.getSession();
		 
		 String sec= (String)Session.getAttribute("USection");
		 Integer pid = (Integer)Session.getAttribute("productid"); 
		System.out.println(sec);
		System.out.println(pid);
		 Session s=HibernetUtil.getFactory().openSession();
		 if(sec.equals("Main")) {
		Query q=s.createQuery("from Product_Details u where u.pid=:pid").setParameter("pid", pid);
		List<Product_Details>list=q.list();
		for( Product_Details product:list) {
			
		if(request.getParameter("price")!="") {
			product.setPrice(request.getParameter("price"));
		}
		if(request.getParameter("discount")!="") {
			product.setDiscount(request.getParameter("discount"));
		}
		if(request.getParameter("final_price")!="") {
			product.setFinal_price(request.getParameter("final_price"));
		}
		if(request.getParameter("sizes")!="") {
			product.setSizes(request.getParameter("sizes"));
		}
		if(request.getParameter("colours")!="") {
			product.setColours(request.getParameter("colours"));
		}
		
		
	
		if(userDao.update(product)) {

	        RequestDispatcher dispatcher = request.getRequestDispatcher("product_delete_update.jsp");
	        dispatcher.forward(request, response);
	
		
		}
		
		
		else {
			response.setContentType("text/html");
      	PrintWriter pw=response.getWriter();
      	pw.println("<script type=\"text/javascript\">");
      	pw.println("alert('This email id is already registered plz try another email-id');");
      	pw.println("</script>");
		}
		      
	}
		 }
		 else {
			 Query q=s.createQuery("from Thrift_product u where u.pid=:pid").setParameter("pid", pid);
				List<Thrift_product>list=q.list();
				for( Thrift_product product:list) {
					
				if(request.getParameter("price")!="") {
					product.setPrice(request.getParameter("price"));
				}
				if(request.getParameter("discount")!="") {
					product.setDiscount(request.getParameter("discount"));
				}
				if(request.getParameter("final_price")!="") {
					product.setFinal_price(request.getParameter("final_price"));
				}
				if(request.getParameter("sizes")!="") {
					product.setSizes(request.getParameter("sizes"));
				}
				if(request.getParameter("colours")!="") {
					product.setColours(request.getParameter("colours"));
				}
				
				
			
				if(userDao.Thupdate(product)) {

			        RequestDispatcher dispatcher = request.getRequestDispatcher("product_delete_update.jsp");
			        dispatcher.forward(request, response);
			
				
				}
				
				
				else {
					response.setContentType("text/html");
		      	PrintWriter pw=response.getWriter();
		      	pw.println("<script type=\"text/javascript\">");
		      	pw.println("alert('This email id is already registered plz try another email-id');");
		      	pw.println("</script>");
				}
				      
			}
			 
		 }
		 }
	}



