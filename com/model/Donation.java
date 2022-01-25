package com.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Random;

@Entity 
@Table(name = "donation")
public class Donation {
	@Id
	private int did;
	private String fname;
	private String lname;
	private String email;
	private long  mno;
	private String addr;
	private long  pincode;
	private String state;
	private String town;
	private String city;
	private String donationtype;
	private String donatewhat;
	private String notes;

	public Donation(int did, String fname, String lname, String email, long mno, String addr, long pincode,
			String state, String town, String city, String donationtype, String donatewhat, String notes) {
		super();
		this.did = new Random().nextInt(100000);
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.mno = mno;
		this.addr = addr;
		this.pincode = pincode;
		this.state = state;
		this.town = town;
		this.city = city;
		this.donationtype = donationtype;
		this.donatewhat = donatewhat;
		this.notes = notes;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getMno() {
		return mno;
	}
	public void setMno(long mno) {
		this.mno = mno;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public long getPincode() {
		return pincode;
	}
	public void setPincode(long pincode) {
		this.pincode = pincode;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDonationtype() {
		return donationtype;
	}
	public void setDonationtype(String donationtype) {
		this.donationtype = donationtype;
	}
	public String getDonatewhat() {
		return donatewhat;
	}
	public void setDonatewhat(String donatewhat) {
		this.donatewhat = donatewhat;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	
	public Donation() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
