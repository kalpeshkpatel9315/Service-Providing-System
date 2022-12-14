package com.model;

public class Reviewmodel 
{
	private int rid,rating;
	private String c_name,serv_name,feedback;
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getServ_name() {
		return serv_name;
	}
	public void setServ_name(String serv_name) {
		this.serv_name = serv_name;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
}
