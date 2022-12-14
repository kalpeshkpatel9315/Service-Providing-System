package com.model;

public class ViewUserModel
{
	private int uid,service1;
	
	public int getUid() {
		return uid;
	}
	public int getService1() {
		return service1;
	}
	public void setService1(int service1) {
		this.service1 = service1;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	private String f_name,l_name,p_no,e_mail,address,s_img,a_img,a_no,serv_subname,service;
	
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getServ_subname() {
		return serv_subname;
	}
	public void setServ_subname(String serv_subname) {
		this.serv_subname = serv_subname;
	}
	public String getA_no() {
		return a_no;
	}
	public void setA_no(String a_no) {
		this.a_no = a_no;
	}
	public String getA_img() {
		return a_img;
	}
	public void setA_img(String a_img) {
		this.a_img = a_img;
	}
	
	public String getS_img() {
		return s_img;
	}
	public void setS_img(String s_img) {
		this.s_img = s_img;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getP_no() {
		return p_no;
	}
	public void setP_no(String p_no) {
		this.p_no = p_no;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
