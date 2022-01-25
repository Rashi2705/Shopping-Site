package com.model;
import java.util.Date;
import java.util.Random;


import javax.persistence.Entity;
import javax.persistence.Id;

import javax.persistence.Table;

@Entity
@Table(name = "Blogs")
public class Blog {
	@Id
	private int bid;
	private String Items;
	private String Content;
	private String Customer_name;
	private Date date;
	private String imagename;
	private String imagepath;
	public String getImagename() {
		return imagename;
	}
	
	public void setImagename(String imagename) {
		this.imagename = imagename;
	}
	public String getImagepath() {
		return imagepath;
	}
	
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getItems() {
		return Items;
	}
	public void setItems(String items) {
		Items = items;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public String getCustomer_name() {
		return Customer_name;
	}
	public void setCustomer_name(String customer_name) {
		Customer_name = customer_name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Blog( String items, String content, String customer_name, Date date,String imagepath,String imagename) {
		super();
		this.bid = new Random().nextInt(100000);
		Items = items;
		Content = content;
		Customer_name = customer_name;
		this.date = date;
		this.imagepath = imagepath;
		this.imagename=imagename;
	}
	public Blog() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
