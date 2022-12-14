package com.model;

public class ContactusModel
{
	private int uid;
	private	String e_mail,sub,msg;
	public int getUid() {
		return uid;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	} 
}
