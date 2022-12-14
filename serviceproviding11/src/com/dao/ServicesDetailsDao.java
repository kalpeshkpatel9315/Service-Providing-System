package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Services_Detail;
import com.util.DBUtil;

public class ServicesDetailsDao 
{
	List<Services_Detail> sd=null;
	Connection cn=null;
	int x=0;
	public int getServicesDetails(Services_Detail det1)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("insert into servicesdetail(serv_id,serv_subname,serv_detail,price,serv_img) values(?,?,?,?,?)");
			st.setInt(1, det1.getServ_id());
			st.setString(2, det1.getServ_subname());
			st.setString(3, det1.getServ_detail());
			
			st.setInt(4, det1.getPrice());
			st.setString(5, det1.getServ_img());
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
      }
	public List<Services_Detail> getservicesdetails()
	{
		sd=new ArrayList<Services_Detail>();
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("select * from servicesdetail");
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				Services_Detail s2=new Services_Detail();
				s2.setServ_det_id(rs.getInt(1));
				s2.setServ_subname(rs.getString(3));
				s2.setServ_detail(rs.getString(4));
		
				s2.setPrice(rs.getInt(5));
				s2.setServ_img(rs.getString(6));
				
				sd.add(s2);		
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sd;
	}
	public List<Services_Detail> showservicesdetails(int serv_id)
	{
		sd=new ArrayList<Services_Detail>();
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("select * from servicesdetail where serv_id=?");
			st.setInt(1, serv_id);
			
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				Services_Detail s2=new Services_Detail();
				s2.setServ_det_id(rs.getInt(1));
				s2.setServ_subname(rs.getString(3));
				s2.setServ_detail(rs.getString(4));
				
				s2.setPrice(rs.getInt(5));
				s2.setServ_img(rs.getString(6));
				sd.add(s2);		
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sd;
	}
	public List<Services_Detail> seedetails(int serv_det_id)
	{
		sd=new ArrayList<Services_Detail>();
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("select * from servicesdetail where serv_det_id=?");
			st.setInt(1, serv_det_id);
			
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				Services_Detail s2=new Services_Detail();
				s2.setServ_det_id(rs.getInt(1));
				s2.setServ_subname(rs.getString(3));
				s2.setServ_detail(rs.getString(4));
				
				s2.setPrice(rs.getInt(5));
				s2.setServ_img(rs.getString(6));
				sd.add(s2);		
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sd;
	}
	
	public Services_Detail placeorder(int serv_det_id)
	{
		Services_Detail s2=null;
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("select * from servicesdetail where serv_det_id=?");
			st.setInt(1, serv_det_id);
			
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				s2=new Services_Detail();
				s2.setServ_det_id(rs.getInt(1));
				s2.setServ_subname(rs.getString(3));
				s2.setPrice(rs.getInt(5));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s2;
	}
	public Services_Detail editservices(int serv_det_id)
	{
		cn=new DBUtil().getConnectionData();
		Services_Detail user1=null;
		try 
		{
			PreparedStatement st=cn.prepareStatement("select * from servicesdetail where serv_det_id=?");
			st.setInt(1, serv_det_id);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				user1=new Services_Detail();
				user1.setServ_det_id(rs.getInt(1));
				user1.setServ_subname(rs.getString(3));
				user1.setServ_detail(rs.getString(4));
				
				user1.setPrice(rs.getInt(5));
				user1.setServ_img(rs.getString(6));
			}
		   } catch (Exception e) {
			e.printStackTrace();
		}
		return user1;
	}
	public int  doUpdateServices(Services_Detail sduser)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("update servicesdetail set serv_subname=?,serv_detail=?,price=?,serv_img=? where serv_det_id=?");
			st.setString(1, sduser.getServ_subname());
			st.setString(2, sduser.getServ_detail());
		
			st.setInt(3,sduser. getPrice());
			st.setString(4, sduser.getServ_img());
			st.setInt(5,sduser. getServ_det_id());
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	public int doDeleteData(int serv_det_id)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("delete from servicesdetail where serv_det_id=?");
			st.setInt(1, serv_det_id);
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}

}
