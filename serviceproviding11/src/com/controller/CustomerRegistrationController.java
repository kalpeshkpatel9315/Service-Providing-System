package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.CustomerRegistrationDao;
import com.model.CustomerRegistrationModel;

@WebServlet("/CustomerRegistrationController")
public class CustomerRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String u_type=null;
    public CustomerRegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		
		if(action.equalsIgnoreCase("conform"))
		{
			 u_type=request.getParameter("u_type");
			if(u_type.equalsIgnoreCase("customer"))
			{
				System.out.println(u_type);
				//CustomerRegistrationModel cmodel=new CustomerRegistrationModel();
			//	cmodel.setU_type(u_type);
				request.getRequestDispatcher("./registration.jsp").include(request, response);
				//response.sendRedirect("./registration.jsp");
			}
			else if(u_type.equalsIgnoreCase("serviceprovider"))
			{
				//CustomerRegistrationModel cmodel=new CustomerRegistrationModel();
				//cmodel.setU_type(u_type);
				request.getRequestDispatcher("./spregistration.jsp").include(request, response);
				//response.sendRedirect("./spregistration.jsp");
				
			}
		}
		else if(action.equalsIgnoreCase("csignup"))
		{
			//String u_type=request.getParameter("u_type");
			String f_name=request.getParameter("f_name");
			String l_name=request.getParameter("l_name");
			String p_no=request.getParameter("p_no");
			String pass=request.getParameter("pass");
			String address=request.getParameter("address");
			String e_mail=request.getParameter("e_mail");
			
			
			System.out.println(u_type);
			CustomerRegistrationModel cmodel=new CustomerRegistrationModel();
			cmodel.setU_type(u_type);
			cmodel.setF_name(f_name);
			cmodel.setL_name(l_name);
			cmodel.setP_no(p_no);
			cmodel.setPass(pass);
			cmodel.setAddress(address);
			cmodel.setE_mail(e_mail);
			
		
			int x=new CustomerRegistrationDao().doRegisterData(cmodel);
			
			if(x>0)
			{
				//System.out.println("in controller");
				request.setAttribute("msg", "Record inserted...");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				
			}
			else
			{
				request.setAttribute("msg", "Record not inserted...");
				request.getRequestDispatcher("registration.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("ssignup"))
		{
			//String u_type=request.getParameter("u_type");
			String f_name=request.getParameter("f_name");
			String l_name=request.getParameter("l_name");
			String p_no=request.getParameter("p_no");
			String pass=request.getParameter("pass");
			String address=request.getParameter("address");
			String e_mail=request.getParameter("e_mail");
			String service=request.getParameter("service");
			String a_no=request.getParameter("a_no");
			String s_img=request.getParameter("s_img");
			String a_img=request.getParameter("a_img");
			
			
			
			//System.out.println(u_type);
			CustomerRegistrationModel cmodel=new CustomerRegistrationModel();
			cmodel.setU_type(u_type);
			cmodel.setF_name(f_name);
			cmodel.setL_name(l_name);
			cmodel.setP_no(p_no);
			cmodel.setPass(pass);
			cmodel.setAddress(address);
			cmodel.setE_mail(e_mail);
			cmodel.setService(service);
			cmodel.setA_no(a_no);
			cmodel.setS_img(s_img);
			cmodel.setA_img(a_img);
			
		
			int x=new CustomerRegistrationDao().doRegisterData(cmodel);
			
			if(x>0)
			{
				//System.out.println("in controller");
				request.setAttribute("msg", "Record inserted...");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				
			}
			else
			{
				request.setAttribute("msg", "Record not inserted...");
				request.getRequestDispatcher("spregistration.jsp").forward(request, response);
			}
		}


	}

}
