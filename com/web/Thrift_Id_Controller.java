package com.web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.hibernate.Session;
import org.hibernate.query.Query;

import com.dao.UserDao;
import com.model.Product_Details;
import com.model.Seller_Reg;
import com.model.Thrift_product;
import com.util.HibernetUtil;


public class Thrift_Id_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
	    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
	    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
	 

	 String title = null;
	 String description= null;
	 String price= null;
	 String discount= null;
	 String final_price= null;
	 String sizes= null;
	 String colours= null;
	 String category= null;
	 String subcategory=null;
	 String Timagename= null;
	
	  UserDao PrDao=new UserDao();
	    public int id;
	  //  public String e_mail=Logincontroller.mail;
    
    public Thrift_Id_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isMultiPartData = ServletFileUpload.isMultipartContent(request);
		if(isMultiPartData) {
			 if (!ServletFileUpload.isMultipartContent(request)) {
		            // if not, we stop here
		            PrintWriter writer = response.getWriter();
		            writer.println("Error: Form must has enctype=multipart/form-data.");
		            writer.flush();
		            return;
		        }
		 
		        // configures upload settings
		        DiskFileItemFactory factory = new DiskFileItemFactory();
		        // sets memory threshold - beyond which files are stored in disk
		        factory.setSizeThreshold(MEMORY_THRESHOLD);
		        // sets temporary location to store files
		        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		 
		        ServletFileUpload upload = new ServletFileUpload(factory);
		         
		        // sets maximum size of upload file
		        upload.setFileSizeMax(MAX_FILE_SIZE);
		         
		        // sets maximum size of request (include file + form data)
		        upload.setSizeMax(MAX_REQUEST_SIZE);
		 
		        // constructs the directory path to store upload file
		        // this path is relative to application's directory
		     /*   String uploadPath = getServletContext().getRealPath("")
		                + File.separator + UPLOAD_DIRECTORY;
		         
		        // creates the directory if it does not exist
		        File uploadDir = new File(uploadPath);
		        if (!uploadDir.exists()) {
		            uploadDir.mkdir();
		        }*/
			try {
				List<FileItem> items=upload.parseRequest(request);
				
				for(FileItem item:items) {
					if(item.isFormField())
					{
						String fieldname = item.getFieldName();
						if(fieldname.equals("Ptitle"))
						{
							title =item.getString();
						}
						else if(fieldname.equals("description"))
						{
							description =item.getString();
						}
						else if(fieldname.equals("price"))
						{
							price =item.getString();
						}
						else if(fieldname.equals("discount"))
						{
							discount =item.getString();
						}
						else if(fieldname.equals("final price"))
						{
							final_price =item.getString();
						}
						else if(fieldname.equals("size"))
						{
							sizes =item.getString();
						}
						else if(fieldname.equals("Colour"))
						{
							colours =item.getString();
						}
						else if(fieldname.equals("category"))
						{
							category =item.getString();
						}
						else if(fieldname.equals("subcategory"))
						{
							subcategory =item.getString();
						}
					}
					else {
						
						 String fileName = new File(item.getName()).getName();
	                       // String filePath = UPLOAD_DIRECTORY + File.separator + fileName;
	                      //  File storeFile = new File(filePath);
	 
	                        // saves the file on disk
	                        //item.write(storeFile);
	                        request.setAttribute("message",
	                            "Upload has been done successfully!");
						//imagepath=filePath;
						Timagename=fileName;
						//Image =(FileInputStream)item.getInputStream();
						item.write(new File("C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0_TOMCT9\\webapps\\thriftUploads\\"+item.getName()));
						//imagepath = "D:\\\\ydukd\\\\mavenhibernate\\\\src\\\\main\\\\webapp\\\\img\\\\"+item.getName();
					}
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else {
			System.out.println("its not a multipartdata");
		}
		
		Thrift_product thproduct=new Thrift_product();
	
		
		 HttpSession Session=request.getSession();
		 
		   Integer id=  (Integer) Session.getAttribute("seller_id");
		thproduct.setCategory(category);
		thproduct.setSubcategory(subcategory);
		thproduct.setPid(new Random().nextInt(100000));
		thproduct.setSid(id);
		thproduct.setTitle(title);
		thproduct.setDescription(description);
		thproduct.setPrice(price);
		thproduct.setDiscount(discount);
		thproduct.setFinal_price(final_price);
		thproduct.setSizes(sizes);
		thproduct.setColours(colours);
		thproduct.setTimagename(Timagename);
			PrDao.saveThProduct(thproduct);
		    System.out.println("thriftsellerid: "+id);
		 RequestDispatcher dispatcher = request.getRequestDispatcher("Thrift_Add_product.jsp");
	        dispatcher.forward(request, response);
	}

}
