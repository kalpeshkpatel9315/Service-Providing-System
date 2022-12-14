package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.model.ViewUserModel;

import com.util.DBUtil;




public class ViewUserDao
{
	List<ViewUserModel> vu=null;;
	Connection cn=null;
	int x=0;
	
	public List<ViewUserModel> getuserdetails()
	{
		vu=new ArrayList<ViewUserModel>();
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("select uid,f_name,l_name,p_no,e_mail,address from customer");
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				ViewUserModel s2=new ViewUserModel();
				s2.setUid(rs.getInt(1));
				s2.setF_name(rs.getString(2));
				s2.setL_name(rs.getString(3));
				s2.setE_mail(rs.getString(4));
				s2.setP_no(rs.getString(5));
				s2.setAddress(rs.getString(6));
				vu.add(s2);		
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vu;
	}
	public List<ViewUserModel> getdetails()
	{
		vu=new ArrayList<ViewUserModel>();
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("select uid,f_name,l_name,p_no,e_mail,address,service,a_no,s_img,a_img from service_provider");
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				ViewUserModel s2=new ViewUserModel();
				s2.setUid(rs.getInt(1));
				s2.setF_name(rs.getString(2));
				s2.setL_name(rs.getString(3));
				s2.setE_mail(rs.getString(4));
				s2.setP_no(rs.getString(5));
				s2.setAddress(rs.getString(6));
				s2.setService(rs.getString(7));
				s2.setA_no(rs.getString(8));
				s2.setS_img(rs.getString(9));
				s2.setA_img(rs.getString(10));
				vu.add(s2);		
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vu;
	}
	public int doDeleteData(int uid)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("delete from customer where uid=?");
			st.setInt(1, uid);
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	public int doDeleteData1(int uid)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("delete from service_provider where uid=?");
			st.setInt(1, uid);
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	public ViewUserModel getuserdetails(int uid)
	{
		cn=new DBUtil().getConnectionData();
		ViewUserModel user1=null;
		try 
		{
			PreparedStatement st=cn.prepareStatement("select * from customer where uid=?");
			st.setInt(1,uid);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				user1=new ViewUserModel();
				user1.setUid(rs.getInt(1));
				user1.setF_name(rs.getString(3));
				user1.setL_name(rs.getString(4));
				user1.setP_no(rs.getString(5));
				user1.setE_mail(rs.getString(6));
				user1.setAddress(rs.getString(8));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user1;
	}
	public ViewUserModel getuserdetails1(int uid)
	{
		cn=new DBUtil().getConnectionData();
		ViewUserModel user1=null;
		try 
		{
			PreparedStatement st=cn.prepareStatement("select * from service_provider where uid=?");
			st.setInt(1,uid);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				user1=new ViewUserModel();
				user1.setUid(rs.getInt(1));
				user1.setF_name(rs.getString(3));
				user1.setL_name(rs.getString(4));
				user1.setP_no(rs.getString(5));
				user1.setE_mail(rs.getString(6));
				user1.setAddress(rs.getString(8));
				int service1=Integer.parseInt(rs.getString(9));
				user1.setService1(service1);
				user1.setA_no(rs.getString(10));
				user1.setS_img(rs.getString(11));
				user1.setA_img(rs.getString(12));
				
			}
			Connection cn1=new DBUtil().getConnectionData();
			PreparedStatement st1=cn1.prepareStatement("select * from services where serv_id=?");
			st1.setInt(1,user1.getService1());
			ResultSet rs1=st1.executeQuery();
			if(rs1.next())
			{
				user1.setServ_subname(rs1.getString(2));
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user1;
	}
	public ViewUserModel geteditprofiledetails(int uid)
	{
		cn=new DBUtil().getConnectionData();
		ViewUserModel user1=null;
		try 
		{
			PreparedStatement st=cn.prepareStatement("select * from customer where uid=?");
			st.setInt(1,uid);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				user1=new ViewUserModel();
				user1.setUid(rs.getInt(1));
				user1.setF_name(rs.getString(3));
				user1.setL_name(rs.getString(4));
				user1.setP_no(rs.getString(5));
				user1.setE_mail(rs.getString(6));
				user1.setAddress(rs.getString(8));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user1;
	}
	public ViewUserModel geteditprofileserviceproviderdetails(int uid)
	{
		cn=new DBUtil().getConnectionData();
		ViewUserModel user1=null;
		int service=0;
		try 
		{
			PreparedStatement st=cn.prepareStatement("select * from service_provider where uid=?");
			st.setInt(1,uid);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				user1=new ViewUserModel();
				user1.setUid(rs.getInt(1));
				user1.setF_name(rs.getString(3));
				user1.setL_name(rs.getString(4));
				user1.setP_no(rs.getString(5));
				user1.setE_mail(rs.getString(6));
				user1.setAddress(rs.getString(8));
				service=Integer.parseInt(rs.getString(9));
				user1.setService1(service);
				user1.setA_no(rs.getString(10));
				user1.setS_img(rs.getString(11));
				user1.setA_img(rs.getString(12));
			}
			Connection cn1=new DBUtil().getConnectionData();
			PreparedStatement st1=cn1.prepareStatement("select * from services where serv_id=?");
			st1.setInt(1, user1.getService1());
			ResultSet rs1=st1.executeQuery();
			if(rs1.next())
			{
				user1.setServ_subname(rs1.getString(2));
			}
			System.out.println(user1.getF_name());
			System.out.println(user1.getP_no());
			System.out.println(user1.getServ_subname());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user1;
	}
	public int doUpdateData(ViewUserModel user1)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("update customer set f_name=?,l_name=?,p_no=?,e_mail=?,address=? where uid=?");
			st.setInt(6, user1.getUid());
			st.setString(1, user1.getF_name());
			st.setString(2, user1.getL_name());
			st.setString(3, user1.getP_no());
			st.setString(4, user1.getE_mail());
			st.setString(5, user1.getAddress());
			
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	public int doUpdateData1(ViewUserModel user1)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("update service_provider set f_name=?,l_name=?,p_no=?,e_mail=?,address=?,service=?,a_no=?,a_img=?,s_img=? where uid=?");
			st.setInt(10, user1.getUid());
			st.setString(1, user1.getF_name());
			st.setString(2, user1.getL_name());
			st.setString(3, user1.getP_no());
			st.setString(4, user1.getE_mail());
			st.setString(5, user1.getAddress());
			st.setString(6, user1.getService());
			st.setString(7, user1.getA_no());
			st.setString(8, user1.getA_img());
			st.setString(9, user1.getS_img());
			
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	public int updateserviceproviderprofile(ViewUserModel user1)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("update  service_provider set f_name=?,l_name=?,p_no=?,e_mail=?,address=?,service=?,a_no=?,s_img=?,a_img=? where uid=?");
			st.setInt(10, user1.getUid());
			st.setString(1, user1.getF_name());
			st.setString(2, user1.getL_name());
			st.setString(3, user1.getP_no());
			st.setString(4, user1.getE_mail());
			st.setString(5, user1.getAddress());
			st.setString(6, user1.getService());
			st.setString(7, user1.getA_no());
			st.setString(8, user1.getS_img());
			st.setString(9, user1.getA_img());
			
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}

}
