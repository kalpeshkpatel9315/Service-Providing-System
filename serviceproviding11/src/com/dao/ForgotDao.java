package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.ForgotPswd;
import com.util.ConnectionUtil;

public class ForgotDao {
	
	public ForgotPswd checkEmail(String email)
	{
		ForgotPswd f=new ForgotPswd();
		try {
		
			Connection conn=ConnectionUtil.createConnection();
			String sql="select * from  customer where e_mail=?";
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.setString(1, email);
			ResultSet rs=stmt.executeQuery();
			if(rs.next())
			{
				f.setId(rs.getInt("uid"));
				f.setEmail(rs.getString("e_mail"));
				f.setName(rs.getString("f_name"));
			}
			else

			{
				f=null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	public int resetPassword(ForgotPswd f)
	{
		int r=0;
		try {
			Connection conn=ConnectionUtil.createConnection();
			String sql="update customer set pass=? where e_mail=?";
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.setString(1, f.getPassword());
			stmt.setString(2, f.getEmail());
			r=stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	}

}