package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="seller")
public class Seller_Reg {

private int sid;
@Id
private String S_email;


private String S_password;
private String email;
private String name;
private String company_name;

private String store_address;
private String state;
private String town;
private String pincode;
private String city;
private String store_name;
public String getS_email() {
	return S_email;
}
public void setS_email(String s_email) {
	S_email = s_email;
}
public String getS_password() {
	return S_password;
}
public void setS_password(String s_password) {
	S_password = s_password;
}
public String getStore_name() {
	return store_name;
}
public void setStore_name(String store_name) {
	this.store_name = store_name;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getTown() {
	return town;
}
public void setTown(String town) {
	this.town = town;
}
public String getPincode() {
	return pincode;
}
public void setPincode(String pincode) {
	this.pincode = pincode;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public int getSid() {
	return sid;
}
public int setSid(int sid) {
	this.sid = sid;
	return sid;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getCompany_name() {
	return company_name;
}
public void setCompany_name(String company_name) {
	this.company_name = company_name;
}

public String getStore_address() {
	return store_address;
}
public void setStore_address(String store_address) {
	this.store_address = store_address;
}
public Seller_Reg(int sid, String email, String name, String company_name, String store_address) {
	super();
	this.sid = sid;
	this.email = email;
	this.name = name;
	this.company_name = company_name;
	
	this.store_address = store_address;
}
public Seller_Reg() {
	super();
	// TODO Auto-generated constructor stub
}

}
