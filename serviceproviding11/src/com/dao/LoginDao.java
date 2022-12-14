package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/*import java.sql.SQLException;*/

import com.model.AdminModel;
import com.util.DBUtil;

public class LoginDao 
{
	Connection cn=null;
	PreparedStatement st=null;
	AdminModel amodel1=null;
	public AdminModel getLogin(AdminModel amodel)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			st=cn.prepareStatement("select * from admin where emailid=? and password=?");
			st.setString(1,amodel.getEmailId());
			st.setString(2,amodel.getPassword());
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				amodel1=new AdminModel();
				amodel1.setEmailId(rs.getString(1));
				amodel1.setPassword(rs.getString(2));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return amodel1;
	}
}