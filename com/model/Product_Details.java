package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product_Details {
@Id
private int pid;
private int sid;
private String title;
private String description;
private String price;
private String discount;
private String final_price;
private String sizes;
private String colours;
private String category;
private String subcategory;
private String Simagename;
private String section;

public String getSubcategory() {
	return subcategory;
}
public void setSubcategory(String subcategory) {
	this.subcategory = subcategory;
}
public String getSection() {
	return section;
}
public void setSection(String section) {
	this.section = section;
}
/**
 * @return the simagename
 */
public String getSimagename() {
	return Simagename;
}
/**
 * @param simagename the simagename to set
 */
public void setSimagename(String simagename) {
	Simagename = simagename;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public int getSid() {
	return sid;
}
public void setSid(int sid) {
	this.sid = sid;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getDiscount() {
	return discount;
}
public void setDiscount(String discount) {
	this.discount = discount;
}
public String getFinal_price() {
	return final_price;
}
public void setFinal_price(String final_price) {
	this.final_price = final_price;
}
public String getSizes() {
	return sizes;
}
public void setSizes(String sizes) {
	this.sizes = sizes;
}
public String getColours() {
	return colours;
}
public void setColours(String colours) {
	this.colours = colours;
}

public Product_Details(int pid, int sid, String title, String description, String price, String discount,
		String final_price, String sizes, String colours, String category, String simagename) {
	super();
	this.pid = pid;
	this.sid = sid;
	this.title = title;
	this.description = description;
	this.price = price;
	this.discount = discount;
	this.final_price = final_price;
	this.sizes = sizes;
	this.colours = colours;
	this.category = category;
	Simagename = simagename;
}
public Product_Details() {
	super();
	// TODO Auto-generated constructor stub
}

}
