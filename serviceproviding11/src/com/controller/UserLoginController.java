package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.dao.UserLoginDao;

import com.model.UserLoginModel;
@WebServlet("/CustomerLoginController")
public class UserLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UserLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		UserLoginModel umodel=new UserLoginModel();
		umodel.setU_type(request.getParameter("u_type"));
		umodel.setE_mail(request.getParameter("e_mail"));
		umodel.setPass(request.getParameter("pass"));
		
		UserLoginModel umodel1=new UserLoginDao().getLogin(umodel);
		
		if(umodel1 != null)
		{
			
			HttpSession session=request.getSession(true);
			//System.out.println("1234");
			if(umodel1.getU_type().equalsIgnoreCase("customer"))
			{	
			session.setAttribute("u_id", umodel1.getUid());
			
			
			session.setAttribute("u_type", umodel1.getU_type());
			session.setAttribute("f_name", umodel1.getF_name());
			session.setAttribute("l_name", umodel1.getL_name());
			session.setAttribute("p_no", umodel1.getP_no());
			
			
			session.setAttribute("e_mail", umodel1.getE_mail());
			session.setAttribute("pass", umodel1.getPass());
			session.setAttribute("address", umodel1.getAddress());
			
			response.sendRedirect("index.jsp");
			}
			else if(umodel1.getU_type().equalsIgnoreCase("serviceprovider"))
			{
			session.setAttribute("u_id", umodel1.getUid());
			session.setAttribute("u_type", umodel1.getU_type());
			session.setAttribute("f_name", umodel1.getF_name());
			session.setAttribute("l_name", umodel1.getL_name());
			session.setAttribute("p_no", umodel1.getP_no());
			session.setAttribute("e_mail", umodel1.getE_mail());
			session.setAttribute("pass", umodel1.getPass());
			session.setAttribute("address", umodel1.getAddress());
			
			response.sendRedirect("spindex.jsp");
			}
		}
		else
		{
			request.setAttribute("msg", "invalid username or password...");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}


	}


