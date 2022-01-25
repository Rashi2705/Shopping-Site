package com.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.dao.UserDao;
import com.model.Product_Details;
import com.model.Seller_Reg;
import com.model.Thrift_product;
import com.util.HibernetUtil;


public class Product_delete_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 private UserDao userdao;
	 public void init() {
	        userdao = new UserDao();
	    }  

    public Product_delete_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String ID = request.getParameter("PId");
		 String Section=request.getParameter("section");
		 int productid2;
		 if(Section.equals("Main")) {
		   productid2=Integer.parseInt(ID);
		   System.out.println(productid2);
		   Product_Details product=new Product_Details();
			Session s=HibernetUtil.getFactory().openSession();
			 
			Query q=s.createQuery("from Product_Details p where p.pid=:Id").setParameter("Id", productid2);
			List<Product_Details>list=q.list();
			for(Product_Details pr:list) {
				userdao.DeleteProduct(pr);
	     
			}
		 }
		 else {
			 productid2=Integer.parseInt(ID);
			   System.out.println(productid2);
			   Thrift_product thproduct=new Thrift_product();
				Session s=HibernetUtil.getFactory().openSession();
				 
				Query q=s.createQuery("from Thrift_product p where p.pid=:Id").setParameter("Id", productid2);
				List<Thrift_product>list=q.list();
				for(Thrift_product pr2:list) {
					userdao.DeleteThProduct(pr2);
		 }
		 }
		   RequestDispatcher dispatcher = request.getRequestDispatcher("product_delete_update.jsp");
	        dispatcher.forward(request, response);
	}
}


