package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "wishlist")
public class Wishlist {
@Id
int wishid;
String email;
int proid;
public int getWishid() {
	return wishid;
}
public void setWishid(int wishid) {
	this.wishid = wishid;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getProid() {
	return proid;
}
public void setProid(int proid) {
	this.proid = proid;
}
public Wishlist(int wishid, String email, int proid) {
	super();
	this.wishid = wishid;
	this.email = email;
	this.proid = proid;
}
public Wishlist() {
	super();
	// TODO Auto-generated constructor stub
}

}
