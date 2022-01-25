package com.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Cart")
public class Cart {


@Id
int cid;
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
 

public String getProduct_title() {
	return product_title;
}
public void setProduct_title(String product_title) {
	this.product_title = product_title;
}
public Date getAddedDate() {
	return addedDate;
}
public void setAddedDate(Date addedDate) {
	this.addedDate = addedDate;
}
public int getSid() {
	return sid;
}
public void setSid(int sid) {
	this.sid = sid;
}
public int getT_amount() {
	return T_amount;
}
public void setT_amount(int t_amount) {
	T_amount = t_amount;
}
public int getDiscount() {
	return discount;
}
public void setDiscount(int discount) {
	this.discount = discount;
}
public int getF_amount() {
	return F_amount;
}
public void setF_amount(int f_amount) {
	F_amount = f_amount;
}

public String getQuantity() {
	return Quantity;
}
public void setQuantity(String quantity) {
	Quantity = quantity;
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
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
String email;
public int getProduct_id() {
	return product_id;
}
public void setProduct_id(int product_id) {
	this.product_id = product_id;
}

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}



public Cart(int cid, String size, String colour, String quantity, int t_amount, int f_amount, int discount, int sid,
		Date addedDate, int product_id, String product_title, String email) {
	super();
	this.cid = cid;
	this.size = size;
	this.colour = colour;
	Quantity = quantity;
	T_amount = t_amount;
	F_amount = f_amount;
	this.discount = discount;
	this.sid = sid;
	this.addedDate = addedDate;
	this.product_id = product_id;
	this.product_title = product_title;
	this.email = email;
}
public Cart() {
	super();
	// TODO Auto-generated constructor stub
}


}

