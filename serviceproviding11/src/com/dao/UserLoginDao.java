package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.UserLoginModel;
import com.util.DBUtil;

public class UserLoginDao 
{
	Connection cn=null;
	PreparedStatement st=null;
	UserLoginModel umodel1=null;
	public UserLoginModel getLogin(UserLoginModel umodel)
	{
		cn=new DBUtil().getConnectionData();
		
		try 
		{
			if(umodel.getU_type().equalsIgnoreCase("customer"))
			{
			st=cn.prepareStatement("select * from Customer where u_type=? and e_mail=? and pass=?");
			st.setString(1, umodel.getU_type());
			st.setString(2, umodel.getE_mail());
			st.setString(3, umodel.getPass());
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				umodel1=new UserLoginModel();
				umodel1.setUid(rs.getInt(1));
				umodel1.setU_type(rs.getString(2));
				umodel1.setF_name(rs.getString(3));
				umodel1.setL_name(rs.getString(4));
				umodel1.setP_no(rs.getString(5));
				umodel1.setE_mail(rs.getString(6));
				umodel1.setPass(rs.getString(7));
				umodel1.setAddress(rs.getString(8));
				
			}
			}
			else if(umodel.getU_type().equalsIgnoreCase("serviceprovider"))
			{
			st=cn.prepareStatement("select * from service_provider where u_type=? and e_mail=? and pass=?");
			st.setString(1, umodel.getU_type());
			st.setString(2, umodel.getE_mail());
			st.setString(3, umodel.getPass());
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				umodel1=new UserLoginModel();
				
				umodel1.setUid(rs.getInt(1));
				umodel1.setU_type(rs.getString(2));
				umodel1.setF_name(rs.getString(3));
				umodel1.setL_name(rs.getString(4));
				umodel1.setP_no(rs.getString(5));
				umodel1.setE_mail(rs.getString(6));
				umodel1.setPass(rs.getString(7));
				umodel1.setAddress(rs.getString(8));
					
			}
			}
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return umodel1;
	}

}
