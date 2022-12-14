package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.CustomerRegistrationModel;
import com.util.DBUtil;

public class CustomerRegistrationDao 
{
	Connection cn=null;
	int x=0;
	PreparedStatement st=null;
	public int doRegisterData(CustomerRegistrationModel cmodel)
	{
		
		String e_mail="",p_no="";
		
		cn=new DBUtil().getConnectionData();
		try 
		{
			if(cmodel.getU_type().equalsIgnoreCase("customer"))
			{
			//System.out.println(cmodel.getP_no());	
			Connection cn1=new DBUtil().getConnectionData();
			PreparedStatement st1=cn1.prepareStatement("select * from customer where p_no=? OR e_mail=? ");
			st1.setString(1, cmodel.getP_no());
			st1.setString(2, cmodel.getE_mail());
			ResultSet rs1=st1.executeQuery();
			if(rs1.next())
			{
				
				p_no=rs1.getString(5);
				System.out.println(p_no);
				e_mail=rs1.getString(6);
				//System.out.println(p_no);
				
				System.out.println(e_mail);
				
			}
			if(p_no=="" && e_mail=="")
			{
				
			st=cn.prepareStatement("insert into customer (u_type,f_name,l_name,p_no,pass,address,e_mail) values(?,?,?,?,?,?,?)");
			st.setString(1, cmodel.getU_type()); 
			st.setString(2, cmodel.getF_name());
			st.setString(3, cmodel.getL_name());
			st.setString(4, cmodel.getP_no());
			st.setString(5, cmodel.getPass());
			st.setString(6, cmodel.getAddress());
			st.setString(7, cmodel.getE_mail());
			
			
			x=st.executeUpdate();
			}
			
			
			}
			if(cmodel.getU_type().equalsIgnoreCase("serviceprovider"))
			{
				System.out.println(cmodel.getU_type());
				Connection cn1=new DBUtil().getConnectionData();
				PreparedStatement st1=cn1.prepareStatement("select * from service_provider where p_no=? OR e_mail=? ");
				st1.setString(1, cmodel.getP_no());
				st1.setString(2, cmodel.getE_mail());
				ResultSet rs1=st1.executeQuery();
				if(rs1.next())
				{
					
					p_no=rs1.getString(5);
					System.out.println(p_no);
					e_mail=rs1.getString(6);
					//System.out.println(p_no);
					
					System.out.println(e_mail);
					
				}
			if(p_no=="" && e_mail=="")
			{	
			st=cn.prepareStatement("insert into service_provider (u_type,f_name,l_name,p_no,pass,address,e_mail,service,a_no,s_img,a_img) values(?,?,?,?,?,?,?,?,?,?,?)");
			st.setString(1, cmodel.getU_type()); 
			st.setString(2, cmodel.getF_name());
			st.setString(3, cmodel.getL_name());
			st.setString(4, cmodel.getP_no());
			st.setString(5, cmodel.getPass());
			st.setString(6, cmodel.getAddress());
			st.setString(7, cmodel.getE_mail());
			st.setString(8, cmodel.getService());
			st.setString(9, cmodel.getA_no());
			st.setString(10, cmodel.getS_img());
			st.setString(11, cmodel.getA_img());
			
			x=st.executeUpdate();
			}
			}
		
		} 
		catch (Exception e)
		{
		
			e.printStackTrace();
		}
		return x;
	}

}
