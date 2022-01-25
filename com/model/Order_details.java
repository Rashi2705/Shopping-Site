package com.model;

import java.util.Date;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="order_detais")
public class Order_details {
@Id
int order_id;
String size;
String colour;
String Quantity;
int T_amount;
int F_amount;
int discount;
 private int sid;
 private Date addedDate;
 int product_id;
 String product_title;
 String email;
 
 
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getProduct_title() {
	return product_title;
}
public void setProduct_title(String product_title) {
	this.product_title = product_title;
}
public int getOrder_id() {
	return order_id;
}
public void setOrder_id(int order_id) {
	this.order_id = order_id;
}
public String getSize() {
	return size;
}
public void setSize(String size) {
	this.size = size;
}
public String getColour() {
	return colour;
}
public void setColour(String colour) {
	this.colour = colour;
}
public String getQuantity() {
	return Quantity;
}
public void setQuantity(String quantity) {
	Quantity = quantity;
}
public int getT_amount() {
	return T_amount;
}
public void setT_amount(int t_amount) {
	T_amount = t_amount;
}
public int getF_amount() {
	return F_amount;
}
public void setF_amount(int f_amount) {
	F_amount = f_amount;
}
public int getDiscount() {
	return discount;
}
public void setDiscount(int discount) {
	this.discount = discount;
}
public int getSid() {
	return sid;
}
public void setSid(int sid) {
	this.sid = sid;
}
public Date getAddedDate() {
	return addedDate;
}
public void setAddedDate(Date addedDate) {
	this.addedDate = addedDate;
}
public int getProduct_id() {
	return product_id;
}
public void setProduct_id(int product_id) {
	this.product_id = product_id;
}
public Order_details( String size, String colour, String quantity, int t_amount, int f_amount,
		int discount, int sid, int product_id,String product_title,String email) {
	super();
	this.order_id = new Random().nextInt(100000);
	this.size = size;
	this.colour = colour;
	Quantity = quantity;
	T_amount = t_amount;
	F_amount = f_amount;
	this.discount = discount;
	this.sid = sid;
	this.addedDate = new Date();
	this.product_id = product_id;
	this.product_title=product_title;
	this.email=email;
}
public Order_details() {
	super();
	// TODO Auto-generated constructor stub
}
 
}
