package com.dao;

import java.sql.Connection;	
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.OrderModel;
import com.util.DBUtil;

public class OrderDao 
{
	
	List<OrderModel> od=null;
	List<OrderModel> sp=null;
	Connection cn=null;
	int x=0; int i=0;
	
	
	public int deleteorder(int o_id)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("update order11 set status=? where o_id=?");
			st.setString(1, "cancelled");
			st.setInt(2, o_id);
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	
	
	public int approverequest(int o_id)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("update order11 set spreq_status=? where o_id=?");
			st.setString(1, "Approved");
			st.setInt(2, o_id);
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	
	public int cancelrequest(int o_id)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("update order11 set spreq_status=? where o_id=?");
			st.setString(1, "Cancelled");
			st.setInt(2, o_id);
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	public int conformorder(int o_id)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("update order11 set status=? where o_id=?");
			st.setString(1, "Completed");
			st.setInt(2, o_id);
			x=st.executeUpdate();
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	
	
	
	
	
	
	
	public int getBookingData(OrderModel om)
	{
		cn=new DBUtil().getConnectionData();
		try 
		{
			PreparedStatement st=cn.prepareStatement("insert into order11(serv_det_id,u_id,address,o_date,o_time,status) values(?,?,?,?,?,?)");
			st.setInt(1, om.getServ_det_id());
			st.setInt(2, om.getU_id());
			st.setString(3, om.getAddress());
			st.setString(4, om.getO_date());
			//System.out.println("O_Time is.. "+om.getO_time());
			st.setString(5, om.getO_time());
			st.setString(6, "pending");
			x=st.executeUpdate();
			
			
			//cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	public List<OrderModel> getorderdetails()
	{
		od=new ArrayList<OrderModel>();
		cn=new DBUtil().getConnectionData();
		try 
		{
		
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
	
	public List<OrderModel> getserviceproviderdetails(int serv_det_id,int o_id)
	{
		int ser_id=0;
		
		
		cn=new DBUtil().getConnectionData();
		sp=new ArrayList<OrderModel>();
		
		try 
		{
			
			
			System.out.println("inside database");
			PreparedStatement ps1=cn.prepareStatement("select * from servicesdetail where serv_det_id=?");
			ps1.setInt(1, serv_det_id);
			
			ResultSet rs1=ps1.executeQuery();
			
			if(rs1.next())
			{
				
				
				ser_id=rs1.getInt(2);
				
				
				
			}
			
			Connection c1=new DBUtil().getConnectionData();
			
			PreparedStatement ps2=c1.prepareStatement("select * from service_provider where service=?");
			ps2.setInt(1, ser_id);
			ResultSet rs2=ps2.executeQuery();
			while(rs2.next())
			{
				
				OrderModel sp1=new OrderModel();
				sp1.setU_id(rs2.getInt(1));
				sp1.setF_name(rs2.getString(3));
				sp1.setL_name(rs2.getString(4));
				sp1.setP_no(rs2.getString(5));
				sp1.setE_mail(rs2.getString(6));
				sp1.setAddress(rs2.getString(8));
				sp1.setServ_det_id(rs1.getInt(1));
				sp1.setServ_subname(rs1.getString(3));
				sp1.setO_id(o_id);
				System.out.println("kalpesh here "+sp1.getO_id());
				sp.add(sp1);
				
				
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sp;
	}
	public List<OrderModel> vieworder(int u_id)
	{
		int serv_det_id=0;
		//int serv_id=0;
		
		cn=new DBUtil().getConnectionData();
		sp=new ArrayList<OrderModel>();
		
		try 
		{
			
			System.out.println("inside database");
			PreparedStatement ps1=cn.prepareStatement("select * from order11 where u_id=?");
			ps1.setInt(1, u_id);
			
			ResultSet rs1=ps1.executeQuery();
			while(rs1.next())
			{
				serv_det_id=rs1.getInt(2);
				int o_id=rs1.getInt(1);
				
				System.out.println("order id"+o_id);
				Connection c1=new DBUtil().getConnectionData();
				PreparedStatement ps2=c1.prepareStatement("select * from servicesdetail where serv_det_id=?");
				ps2.setInt(1, serv_det_id);
				ResultSet rs2=ps2.executeQuery();
				while(rs2.next())
				{
					
					OrderModel sp1=new OrderModel();
					sp1.setAddress(rs1.getString(4));
					sp1.setO_date(rs1.getString(5));
					sp1.setO_time(rs1.getString(6));
					sp1.setStatus(rs1.getString(7));
					sp1.setServ_subname(rs2.getString(3));
					System.out.println(rs2.getString(3));
					sp1.setO_id(o_id);
					
					
					sp.add(sp1);
					//System.out.println("values are :"+rs2.getString(3));
				}
			}
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sp;
	}
	public List<OrderModel> viewordersp(int u_id)
	{
		OrderModel sp1=new OrderModel();
		cn=new DBUtil().getConnectionData();
		sp=new ArrayList<OrderModel>();
		
		try 
		{
			
			System.out.println("inside database");
			PreparedStatement ps=cn.prepareStatement("select * from order11 where uid=? AND spreq_status=?");
			ps.setInt(1, u_id);
			ps.setString(2, "approved");
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				sp1.setO_id(rs.getInt(1));
				sp1.setServ_det_id(rs.getInt(2));
				sp1.setU_id(rs.getInt(3));
				sp1.setAddress(rs.getString(4));
				sp1.setO_date(rs.getString(5));
				sp1.setO_time(rs.getString(6));
				sp1.setStatus(rs.getString(7));
				sp1.setSpreq_status(rs.getString(10));
				
				Connection cn1=new DBUtil().getConnectionData();
				PreparedStatement ps1=cn1.prepareStatement("select * from servicesdetail where serv_det_id=?");
				ps1.setInt(1, sp1.getServ_det_id());
				ResultSet rs1=ps1.executeQuery();
				if(rs1.next())
				{
					sp1.setServ_subname(rs1.getString(3));
					sp1.setPrice(rs1.getInt(5));
				}
				
				Connection cn2=new DBUtil().getConnectionData();
				PreparedStatement ps2=cn2.prepareStatement("select * from customer where uid=?");
				ps2.setInt(1, sp1.getU_id());
				ResultSet rs2=ps2.executeQuery();
				if(rs2.next())
				{
					sp1.setF_name(rs2.getString(3));
					sp1.setP_no(rs2.getString(5));
					
				}
				sp.add(sp1);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sp;
	}

	
}