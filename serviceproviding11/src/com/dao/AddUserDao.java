package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.model.CustomerRegistrationModel;
import com.util.DBUtil;

public class AddUserDao 
{
	Connection cn=null;
	int x=0;
	PreparedStatement st=null;
	public int doRegisterData(CustomerRegistrationModel cmodel)
	{
		
		cn=new DBUtil().getConnectionData();
		try 
		{
			if(cmodel.getU_type().equals("Customer"))
			{
			st=cn.prepareStatement("insert into customer(u_type,f_name,l_name,p_no,e_mail,pass,address) values(?,?,?,?,?,?,?)");
			st.setString(1, cmodel.getU_type()); 
			st.setString(2, cmodel.getF_name());
			st.setString(3, cmodel.getL_name());
			st.setString(4, cmodel.getP_no());
			st.setString(7, cmodel.getE_mail());
			st.setString(5, cmodel.getPass());
			st.setString(6, cmodel.getAddress());
			
			
			
			x=st.executeUpdate();
			}
			if(cmodel.getU_type().equals("Service Provider"))
			{
			st=cn.prepareStatement("insert into service_provider (u_type,f_name,l_name,p_no,pass,address,e_mail) values(?,?,?,?,?,?,?)");
			st.setString(1, cmodel.getU_type()); 
			st.setString(2, cmodel.getF_name());
			st.setString(3, cmodel.getL_name());
			st.setString(4, cmodel.getP_no());
			st.setString(7, cmodel.getE_mail());
			st.setString(5, cmodel.getPass());
			st.setString(6, cmodel.getAddress());
			
			
			
			x=st.executeUpdate();
			}
		
		} 
		catch (Exception e)
		{
		
			e.printStackTrace();
		}
		return x;
	}


}
