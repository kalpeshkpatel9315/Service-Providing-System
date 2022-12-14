package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CustomerRegistrationDao;
import com.model.CustomerRegistrationModel;

@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		String done="abc";
		if(action.equalsIgnoreCase("Customer"))
		{	
			
			//System.out.println("kalpesh");
			//request.setAttribute("msg", done);
			response.sendRedirect("./admin1/adduser1.jsp");
			//request.getRequestDispatcher("./admin1/adduser1.jsp").include(request, response);
			
		}
		else if(action.equalsIgnoreCase("Service Provider"))
		{
			//response.sendRedirect("./admin1/addserviceprovider.jsp");
			//request.setAttribute("msg", done);
			
			request.getRequestDispatcher("admin1/addserviceprovider.jsp").include(request, response);
		}
		
		else if(action.equalsIgnoreCase("adduser"))
		{
		String u_type="customer";
		String f_name=request.getParameter("f_name");
		String l_name=request.getParameter("l_name");
		String p_no=request.getParameter("p_no");
		String e_mail=request.getParameter("e_mail");
		String pass=request.getParameter("pass");
		String address=request.getParameter("address");
		
		CustomerRegistrationModel cmodel=new CustomerRegistrationModel();
		cmodel.setU_type(u_type);
		cmodel.setF_name(f_name);
		cmodel.setL_name(l_name);
		cmodel.setP_no(p_no);
		cmodel.setE_mail(e_mail);
		cmodel.setPass(pass);
		cmodel.setAddress(address);
		int x=new CustomerRegistrationDao().doRegisterData(cmodel);
		if(x>0)
		{
			request.setAttribute("msg", "Record inserted...");
			response.sendRedirect("admin1/adduser1.jsp");
		}
		
		  else 
		  { 
			  request.setAttribute("msg", "Email Id or Phone No Already Exist...");
			  response.sendRedirect("admin1/adduser1.jsp");
		  }
		 
		}
		else if(action.equalsIgnoreCase("addserviceprovider"))
		{
		String u_type="serviceprovider";
		String f_name=request.getParameter("f_name");
		String l_name=request.getParameter("l_name");
		String p_no=request.getParameter("p_no");
		String e_mail=request.getParameter("e_mail");
		String pass=request.getParameter("pass");
		String address=request.getParameter("address");
		String service=request.getParameter("service");
		String a_no=request.getParameter("a_no");
		String s_img=request.getParameter("s_img");
		String a_img=request.getParameter("a_img");
		
		CustomerRegistrationModel cmodel=new CustomerRegistrationModel();
		cmodel.setU_type(u_type);
		cmodel.setF_name(f_name);
		cmodel.setL_name(l_name);
		cmodel.setP_no(p_no);
		cmodel.setE_mail(e_mail);
		cmodel.setPass(pass);
		cmodel.setAddress(address);
		cmodel.setService(service);
		cmodel.setA_no(a_no);
		cmodel.setS_img(s_img);
		cmodel.setA_img(a_img);
		int x=new CustomerRegistrationDao().doRegisterData(cmodel);
		if(x>0)
		{
			request.setAttribute("msg", "Record inserted...");
			request.getRequestDispatcher("./admin1/addserviceprovider.jsp").forward(request, response);
		}
		else 
		  { 
			  request.setAttribute("msg", "Email Id or Phone No Already Exist...");
			  request.getRequestDispatcher("./admin1/addserviceprovider.jsp").forward(request, response);
		  }
		
		}


	}

}
