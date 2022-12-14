package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ViewUserDao;
import com.model.ViewUserModel;

@WebServlet("/ViewUser")
public class ViewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ViewUser() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("showdata"))
		{
				List<ViewUserModel> user1=new ViewUserDao().getuserdetails();
				if(user1 !=null)
				{
							request.setAttribute("user1", user1);
							//response.sendRedirect("admin1/viewuser.jsp");
							request.getRequestDispatcher("admin1/viewuser.jsp").forward(request, response);
				}
		}
		
		else if(action.equals("showdata1"))
		{
			List<ViewUserModel> user1=new ViewUserDao().getdetails();
			if(user1 !=null)
			{
						request.setAttribute("serv", user1);
						request.getRequestDispatcher("admin1/viewserviceprovider.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("deletedata"))
		{
			int uid=Integer.parseInt(request.getParameter("uid"));
			int x=new ViewUserDao().doDeleteData(uid);
			if(x>0)
			{
				request.setAttribute("msg", "Record Deleted..");
				//request.getRequestDispatcher("../admin1/viewuser.jsp").forward(request, response);
				response.sendRedirect("../ViewUser?action=showdata");
			}
			else
			{
				request.setAttribute("msg", "Record not Deleted...");
				/*
				 * request.getRequestDispatcher("admin1/viewuser.jsp").forward(request,
				 * response);
				 */
				response.sendRedirect("../ViewUser?action=showdata");
			}	
		}
		else if(action.equalsIgnoreCase("deletedata1"))
		{
			int uid=Integer.parseInt(request.getParameter("servuid"));
			int x=new ViewUserDao().doDeleteData1(uid);
			if(x>0)
			{
				request.setAttribute("msg", "Record Deleted..");
				//request.getRequestDispatcher("../admin1/viewuser.jsp").forward(request, response);
				response.sendRedirect("../ViewUser?action=showdata1");
			}
			else
			{
				request.setAttribute("msg", "Record not Deleted...");
				request.getRequestDispatcher("home.jsp").forward(request, response);
			}	
		}
		else if(action.equalsIgnoreCase("updatedata"))
		{
			int uid=Integer.parseInt(request.getParameter("uid"));
			ViewUserModel user1=new ViewUserDao().getuserdetails(uid);
			if(user1 != null)
			{
				request.setAttribute("user1", user1);
				request.getRequestDispatcher("admin1/updateuser.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("updatedata1"))
		{
			int uid=Integer.parseInt(request.getParameter("servuid"));
			ViewUserModel user1=new ViewUserDao().getuserdetails1(uid);
			if(user1 != null)
			{
				request.setAttribute("user1", user1);
				request.getRequestDispatcher("admin1/updateserviceprovider.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("viewprofile"))
		{
			
			int u_id=Integer.parseInt(request.getParameter("u_id"));
			ViewUserModel editp=new ViewUserDao().geteditprofiledetails(u_id);
			if(editp != null)
			{
				request.setAttribute("editp", editp);
				request.getRequestDispatcher("viewprofile.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("editprofile"))
		{
			int u_id=Integer.parseInt(request.getParameter("u_id"));
			ViewUserModel editp1=new ViewUserDao().geteditprofiledetails(u_id);
			if(editp1 != null)
			{
				request.setAttribute("editp1", editp1);
				request.getRequestDispatcher("viewprofile.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("viewprofileserviceprovider"))
		{
			
			int u_id=Integer.parseInt(request.getParameter("uid"));
			ViewUserModel viewsp=new ViewUserDao().geteditprofileserviceproviderdetails(u_id);
			if(viewsp != null)
			{
				request.setAttribute("viewsp", viewsp);
				request.getRequestDispatcher("viewserviceproviderprofile.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("editprofileserviceprovider"))
		{
			int u_id=Integer.parseInt(request.getParameter("u_id"));
			ViewUserModel editsp=new ViewUserDao().geteditprofileserviceproviderdetails(u_id);
			System.out.println(editsp.getA_no());
			if(editsp != null)
			{
				request.setAttribute("editsp", editsp);
				request.getRequestDispatcher("viewserviceproviderprofile.jsp").forward(request, response);
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("updateprofileserviceprovider"))
		{
		int uid=Integer.parseInt(request.getParameter("u_id"));
		String f_name=request.getParameter("f_name");
		String l_name=request.getParameter("l_name");
		String p_no=request.getParameter("p_no");
		String e_mail=request.getParameter("e_mail");
		String address=request.getParameter("address");
		String service=request.getParameter("service");
		String a_no=request.getParameter("a_no");
		String a_img=request.getParameter("a_img");
		String s_img=request.getParameter("s_img");
		
		ViewUserModel updateprofile=new ViewUserModel();
		updateprofile.setUid(uid);
		updateprofile.setF_name(f_name);
		updateprofile.setL_name(l_name);
		updateprofile.setP_no(p_no);
		updateprofile.setE_mail(e_mail);
		updateprofile.setAddress(address);
		updateprofile.setService(service);
		updateprofile.setA_no(a_no);
		updateprofile.setA_img(a_img);
		updateprofile.setS_img(s_img);
		
		int x=new ViewUserDao().updateserviceproviderprofile(updateprofile);
		
		if(x>0)
		{
			request.setAttribute("msg","updated");
			int id=updateprofile.getUid();
			response.sendRedirect("ViewUser?action=viewprofileserviceprovider&uid="+id);
			//request.getRequestDispatcher("./admin1/viewuser.jsp").forward(request, response);
		}
	}
		
		
		if(action.equalsIgnoreCase("updateprofile"))
		{
		int uid=Integer.parseInt(request.getParameter("u_id"));
		String f_name=request.getParameter("f_name");
		String l_name=request.getParameter("l_name");
		String p_no=request.getParameter("p_no");
		String e_mail=request.getParameter("e_mail");
		String address=request.getParameter("address");
		
		ViewUserModel updateprofile=new ViewUserModel();
		updateprofile.setUid(uid);
		updateprofile.setF_name(f_name);
		updateprofile.setL_name(l_name);
		updateprofile.setP_no(p_no);
		updateprofile.setE_mail(e_mail);
		updateprofile.setAddress(address);
		
		int x=new ViewUserDao().doUpdateData(updateprofile);
		
		if(x>0)
		{
			request.setAttribute("msg","updated");
			int id=updateprofile.getUid();
			response.sendRedirect("ViewUser?action=viewprofile&u_id="+id);
			//request.getRequestDispatcher("./admin1/viewuser.jsp").forward(request, response);
		}
	}
	
		if(action.equalsIgnoreCase("updatecustomer"))
		{
		int uid=Integer.parseInt(request.getParameter("uid"));
		String f_name=request.getParameter("f_name");
		String l_name=request.getParameter("l_name");
		String p_no=request.getParameter("p_no");
		String e_mail=request.getParameter("e_mail");
		String address=request.getParameter("address");
		
		ViewUserModel user1=new ViewUserModel();
		user1.setUid(uid);
		user1.setF_name(f_name);
		user1.setL_name(l_name);
		user1.setP_no(p_no);
		user1.setE_mail(e_mail);
		user1.setAddress(address);
		
		int x=new ViewUserDao().doUpdateData(user1);
		
		if(x>0)
		{
			request.setAttribute("msg","updated");
			response.sendRedirect("ViewUser?action=showdata");
			//request.getRequestDispatcher("./admin1/viewuser.jsp").forward(request, response);
		}
	}
		else if(action.equalsIgnoreCase("updateserviceprovider"))
		{
			int uid=Integer.parseInt(request.getParameter("uid"));
			String f_name=request.getParameter("f_name");
			String l_name=request.getParameter("l_name");
			String p_no=request.getParameter("p_no");
			String e_mail=request.getParameter("e_mail");
			String address=request.getParameter("address");
			String service=request.getParameter("service");
			String a_no=request.getParameter("a_no");
			String a_img=request.getParameter("a_img");
			String s_img=request.getParameter("s_img");
			 
			ViewUserModel user1=new ViewUserModel();
			user1.setUid(uid);
			user1.setF_name(f_name);
			user1.setL_name(l_name);
			user1.setP_no(p_no);
			user1.setE_mail(e_mail);
			user1.setAddress(address);
			user1.setService(service);
			user1.setA_no(a_no);
			user1.setA_img(a_img);
			user1.setS_img(s_img);
			int x=new ViewUserDao().doUpdateData1(user1);
			
			if(x>0)
			{
				request.setAttribute("msg","updated");
				response.sendRedirect("ViewUser?action=showdata1");
				//request.getRequestDispatcher("./admin1/viewuser.jsp").forward(request, response);
			}

		}
	}

}
