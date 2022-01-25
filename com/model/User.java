package com.model;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class User {
	
	private int id;
	
	private String name;
	@Id
	private String email_id;
	private String password;
	private Date addedDate;
	@Column(length=10)
	private String phone_no;
	private String gender;
	private String location;
	private String state;
	private String town;
	private String pincode;
	private String city;
	private String alt_mobileno;
	private String alt_location;
	
	public User( String name, String email_id, String password, Date addedDate) {
		
		this.id = new Random().nextInt(100000);
		this.name = name;
		this.email_id = email_id;
		this.password = password;
		this.addedDate = addedDate;
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

	public String getAlt_location() {
		return alt_location;
	}

	public void setAlt_location(String alt_location) {
		this.alt_location = alt_location;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAlt_mobileno() {
		return alt_mobileno;
	}

	public void setAlt_mobileno(String alt_mobileno) {
		this.alt_mobileno = alt_mobileno;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	 
}
