package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ContactusDao;
import com.model.ContactusModel;


@WebServlet("/Contactuscontroller")
public class Contactuscontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Contactuscontroller() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("viewcontactus"))
		{
				List<ContactusModel> c=new ContactusDao().getcontactusdetails();
				if(c !=null)
				{
							request.setAttribute("c", c);
							//response.sendRedirect("admin1/viewuser.jsp");
							request.getRequestDispatcher("admin1/viewcontactus.jsp").forward(request, response);
				}
		}
		else if(action.equalsIgnoreCase("deletedata"))
		{
			int uid=Integer.parseInt(request.getParameter("uid"));
			int x=new ContactusDao().doDeleteData(uid);
			if(x>0)
			{
				request.setAttribute("msg", "Record Deleted..");
				//request.getRequestDispatcher("../admin1/viewuser.jsp").forward(request, response);
				response.sendRedirect("Contactuscontroller?action=viewcontactus");
			}
			else
			{
				request.setAttribute("msg", "Record not Deleted...");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}	
		}
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("serviceprovider"))
		{
		String e_mail=request.getParameter("e_mail");
		String sub=request.getParameter("sub");
		String msg=request.getParameter("msg");
		
		
		ContactusModel c=new ContactusModel();
		c.setE_mail(e_mail);
		c.setSub(sub);
		c.setMsg(msg);
		int x=new ContactusDao().contactus(c);
		if(x>0)
		{
			
			request.setAttribute("msg", "Record inserted...");
			response.sendRedirect("spindex.jsp");
			
		}
		else
		{
			request.setAttribute("msg", "Record not inserted...");
			request.getRequestDispatcher("spindex.jsp").forward(request, response);
		}

	}
		else if(action.equalsIgnoreCase("customer"))
		{
		String e_mail=request.getParameter("e_mail");
		String sub=request.getParameter("sub");
		String msg=request.getParameter("msg");
		
		
		ContactusModel c=new ContactusModel();
		c.setE_mail(e_mail);
		c.setSub(sub);
		c.setMsg(msg);
		int x=new ContactusDao().contactus(c);
		if(x>0)
		{
			
			request.setAttribute("msg", "Record inserted...");
			response.sendRedirect("index.jsp");
			
		}
		else
		{
			request.setAttribute("msg", "Record not inserted...");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}

	}
	

	}
}
