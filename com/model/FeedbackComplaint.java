
package com.model;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity 
@Table(name = "feedbackcomplaint")

public class FeedbackComplaint {
	

	@Id
	private int fid;
	private String fname;
	private String lname;
	private String emailf;
	
	private String query ;
	public FeedbackComplaint(int fid, String fname, String lname, String emailf, String query) {
		super();
		this.fid =  new Random().nextInt(100000);
		this.fname = fname;
		this.lname = lname;
		this.emailf = emailf;
		this.query = query;
	}

	public FeedbackComplaint() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getFid() {
		return fid;
	}

	/**
	 * @param fid the fid to set
	 */
	public void setFid(int fid) {
		this.fid = fid;
	}

	/**
	 * @return the fname
	 */
	public String getFname() {
		return fname;
	}

	/**
	 * @param fname the fname to set
	 */
	public void setFname(String fname) {
		this.fname = fname;
	}

	/**
	 * @return the lname
	 */
	public String getLname() {
		return lname;
	}

	/**
	 * @param lname the lname to set
	 */
	public void setLname(String lname) {
		this.lname = lname;
	}

	/**
	 * @return the email
	 */
	public String getEmailf() {
		return emailf;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmailf(String emailf) {
		this.emailf = emailf;
	}

	/**
	 * @return the query
	 */
	public String getQuery() {
		return query;
	}

	/**
	 * @param query the query to set
	 */
	public void setQuery(String query) {
		this.query = query;
	}
	
	
}
