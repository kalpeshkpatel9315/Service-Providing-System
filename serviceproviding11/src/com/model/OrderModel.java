package com.model;

public class OrderModel 
{
	private int o_id,u_id,serv_det_id,price,uid;
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	private String address,o_date,o_time,status,serv_subname,f_name,l_name,p_no,e_mail,spreq_status,p_status;
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getP_status() {
		return p_status;
	}
	public void setP_status(String p_status) {
		this.p_status = p_status;
	}
	public String getSpreq_status() {
		return spreq_status;
	}
	public void setSpreq_status(String spreq_status) {
		this.spreq_status = spreq_status;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getServ_subname() {
		return serv_subname;
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
	public void setServ_subname(String serv_subname) {
		this.serv_subname = serv_subname;
	}
	public int getO_id() {
		return o_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public int getServ_det_id() {
		return serv_det_id;
	}
	public void setServ_det_id(int serv_det_id) {
		this.serv_det_id = serv_det_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getO_date() {
		return o_date;
	}
	public void setO_date(String o_date) {
		this.o_date = o_date;
	}
	public String getO_time() {
		return o_time;
	}
	public void setO_time(String o_time) {
		this.o_time = o_time;
	}
}
