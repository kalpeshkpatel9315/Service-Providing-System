package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.ContactusModel;

import com.util.DBUtil;

public class ContactusDao 
{
	List<ContactusModel> vu=null;
	Connection cn=null;
	int x=0;
	PreparedStatement st=null;
	public List<ContactusModel> getcontactusdetails()
	{
		vu=new ArrayList<ContactusModel>();
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("select uid,e_mail,sub,msg from contactus");
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				ContactusModel c1=new ContactusModel();
				c1.setUid(rs.getInt(1));
				c1.setE_mail(rs.getString(2));
				c1.setSub(rs.getString(3));
				c1.setMsg(rs.getString(4));
				vu.add(c1);		
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vu;
	}
	
	public int contactus(ContactusModel c1)
	{
		
		cn=new DBUtil().getConnectionData();
		try 
		{
			st=cn.prepareStatement("insert into contactus(e_mail,sub,msg) values(?,?,?)");
			st.setString(1, c1.getE_mail()); 
			st.setString(2, c1.getSub());
			st.setString(3, c1.getMsg());

			x=st.executeUpdate();
			
			
		
		} 
		catch (Exception e)
		{
		
			e.printStackTrace();
		}
		return x;
	}
	public int doDeleteData(int uid)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("delete from contactus where uid=?");
			st.setInt(1, uid);
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	

}
