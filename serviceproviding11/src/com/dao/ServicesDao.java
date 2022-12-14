package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Services;
import com.util.DBUtil;

public class ServicesDao 
{
	Connection cn=null;
	int x=0;
	List<Services> smodel=null;
	public int getServicesData(Services ser1)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("insert into services(serv_name,image) values(?,?)");
			st.setString(1, ser1.getServ_name());
			st.setString(2, ser1.getImage());	
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	public List<Services> getServices()
	{
		cn=new DBUtil().getConnectionData();
		Services user1=null;
		smodel=new ArrayList<Services>();
		try 
		{
			PreparedStatement st=cn.prepareStatement("select * from services ");
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				user1=new Services();
				user1.setServ_id(rs.getInt(1));
				user1.setServ_name(rs.getString(2));
				user1.setImage(rs.getString(3));
				smodel.add(user1);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return smodel;
	}
	public int doDeleteData(int serv_id)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("delete from services where serv_id=?");
			st.setInt(1, serv_id);
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	public Services geteditservices(int serv_id)
	{
		cn=new DBUtil().getConnectionData();
		Services user1=null;
		try 
		{
			PreparedStatement st=cn.prepareStatement("select * from services where serv_id=?");
			st.setInt(1, serv_id);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				user1=new Services();
				user1.setServ_id(rs.getInt(1));
				user1.setServ_name(rs.getString(2));
				user1.setImage(rs.getString(3));
			}
		   } catch (Exception e) {
			e.printStackTrace();
		}
		return user1;
	}
	public int  doUpdateServices(Services suser)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("update services set serv_name=?,image=? where serv_id=?");
			st.setString(1, suser.getServ_name());
			st.setString(2, suser.getImage());
			st.setInt(3,suser. getServ_id());
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}

	
}
