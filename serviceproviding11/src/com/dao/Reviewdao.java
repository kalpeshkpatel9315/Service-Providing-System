package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Reviewmodel;
import com.util.DBUtil;

public class Reviewdao
{
	int r1=0;
	public int insertreview(Reviewmodel r)
	{
		try
		{
			Connection cn=new DBUtil().getConnectionData();
			PreparedStatement ps=cn.prepareStatement("insert into review (c_name,serv_name,rating,feedback) values(?,?,?,?)");
			ps.setString(1, r.getC_name());
			ps.setString(2, r.getServ_name());
			ps.setInt(3, r.getRating());
			ps.setString(4, r.getFeedback());
			r1=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return r1;
	}
	public List<Reviewmodel> viewreview()
	{
		List<Reviewmodel> rm1=new ArrayList<Reviewmodel>();
		Connection cn=new DBUtil().getConnectionData();
		try
		{
			PreparedStatement ps=cn.prepareStatement("select * from review");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Reviewmodel rm=new Reviewmodel();
				rm.setRid(rs.getInt(1));
				rm.setC_name(rs.getString(2));
				rm.setServ_name(rs.getString(3));
				rm.setRating(rs.getInt(4));
				rm.setFeedback(rs.getString(5));
				rm1.add(rm);
			}
		} 
		catch (Exception e) 
		{
		
			e.printStackTrace();
		}
		return rm1;
	}
	public int deletereview(int rid)
	{
		int r=0;
		Connection cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("delete from review where rid=?");
			st.setInt(1, rid);
			r=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r;
	}
	public List<Reviewmodel> viewreviewcu()
	{
		List<Reviewmodel> rm1=new ArrayList<Reviewmodel>();
		Connection cn=new DBUtil().getConnectionData();
		try
		{
			PreparedStatement ps=cn.prepareStatement("select * from review");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Reviewmodel rm=new Reviewmodel();
				rm.setRid(rs.getInt(1));
				rm.setC_name(rs.getString(2));
				rm.setServ_name(rs.getString(3));
				rm.setRating(rs.getInt(4));
				rm.setFeedback(rs.getString(5));
				rm1.add(rm);
			}
		} 
		catch (Exception e) 
		{
		
			e.printStackTrace();
		}
		return rm1;
	}
}
