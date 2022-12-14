package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.model.OrderModel;
import com.util.DBUtil;

public class Assignserviceproviderdao {
	Connection c2 = null;
	int x = 0;
	int i = 0;
	public List<OrderModel> assignserviceprovider(int u_id,int o_id)
	{
		int uid=0;
		
		c2=new DBUtil().getConnectionData();
		List<OrderModel> od=null;
		od=new ArrayList<OrderModel>();
		
		try 
		{
			
			
			Connection c2=new DBUtil().getConnectionData();
			PreparedStatement ps3=c2.prepareStatement("update order11 set uid=? where o_id=? ");
			ps3.setInt(2,o_id);
			ps3.setInt(1,u_id);
			
			x=ps3.executeUpdate();
			
			
			
			Connection cn=new DBUtil().getConnectionData();
			PreparedStatement st=cn.prepareStatement("SELECT o.o_id,s.serv_subname,c.f_name,o.address,o.o_date,o.o_time,o.status,o.serv_det_id,o.uid,o.p_status,o.spreq_status FROM customer c, order11 o, servicesdetail s "
					+ "WHERE o.serv_det_id = s.serv_det_id AND o.u_id = c.uid");
			ResultSet rs=st.executeQuery();
		    while(rs.next())
			{
				OrderModel o=new OrderModel();
				o.setO_id(rs.getInt(1));
				
				//o.setU_id(rs.getInt(3));
				o.setServ_subname(rs.getString(2));
				//o.setU_id(rs.getInt(3));
				o.setF_name(rs.getString(3));
				o.setAddress(rs.getString(4));
				o.setO_date(rs.getString(5));
				o.setO_time(rs.getString(6));
				o.setStatus(rs.getString(7));
				o.setServ_det_id(rs.getInt(8));
				o.setUid(rs.getInt(9));
				o.setP_status(rs.getString(10));
				o.setSpreq_status(rs.getString(11));
				//o.setP_status(p_status);
				
				
				od.add(o);		
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return od;
	}

	/*
	 * public int assignserviceprovider(int serv_det_id) { int serv_id=0; int
	 * serv_det_id1=0; int uid=0; int o_id=0; cn=new DBUtil().getConnectionData();
	 * 
	 * 
	 * try {
	 * 
	 * 
	 * System.out.println("inside database"); PreparedStatement
	 * ps1=cn.prepareStatement("select * from order11 where serv_det_id=?");
	 * ps1.setInt(1, serv_det_id);
	 * 
	 * ResultSet rs=ps1.executeQuery(); Assignserviceprovider as=new
	 * Assignserviceprovider(); if(rs.next()) {
	 * 
	 * o_id=rs.getInt(1); as.setO_id(o_id); serv_det_id1=rs.getInt(2);
	 * 
	 * 
	 * 
	 * as.setServ_det_id1(serv_det_id1);
	 * 
	 * 
	 * } Connection c=new DBUtil().getConnectionData();
	 * 
	 * PreparedStatement
	 * ps=c.prepareStatement("select * from  servicesdetail where serv_det_id=?");
	 * ps.setInt(1, as.getServ_det_id1()); ResultSet rss=ps.executeQuery();
	 * if(rss.next()) { serv_id=rss.getInt(2);
	 * 
	 * 
	 * 
	 * as.setServ_id(serv_id); System.out.println(as.getServ_id());
	 * 
	 * }
	 * 
	 * 
	 * Connection c1=new DBUtil().getConnectionData();
	 * 
	 * PreparedStatement
	 * ps2=c1.prepareStatement("select * from service_provider where service=?");
	 * ps2.setInt(1, as.getServ_id()); ResultSet rs1=ps2.executeQuery();
	 * if(rs1.next()) { uid=rs1.getInt(1); System.out.println("patidar"+uid);
	 * as.setUid(uid);
	 * 
	 * 
	 * } Connection c2=new DBUtil().getConnectionData(); PreparedStatement
	 * ps3=c2.prepareStatement("update order11 set uid=? where o_id=? ");
	 * ps3.setInt(2,as.getO_id()); ps3.setInt(1,as.getUid());
	 * 
	 * 
	 * 
	 * 
	 * x=ps3.executeUpdate();
	 * 
	 * 
	 * } catch (Exception e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } return x; }
	 */

}
