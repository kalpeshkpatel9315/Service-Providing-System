package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.LoginDao;
import com.model.AdminModel;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("logout"))
		{
			/*
			 * int logout=51;//HttpSession session=request.getSession(false);
			 * request.setAttribute("logout", logout);
			 */
			
			response.sendRedirect("logout.jsp");
		}
		if(action.equalsIgnoreCase("adminlogout"))
		{
			
		 		
			response.sendRedirect("admin1/adminlogout.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		AdminModel amodel=new AdminModel();
		amodel.setEmailId(request.getParameter("emailid"));
		amodel.setPassword(request.getParameter("password"));
		
		AdminModel amodel1=new LoginDao().getLogin(amodel);
		if(amodel1 != null)
		{
			HttpSession session=request.getSession(true);
			session.setAttribute("emailid",amodel1.getEmailId());
			session.setAttribute("password",amodel1.getPassword());
			response.sendRedirect("admin1/dashboard.jsp");
		}
		else
		{
			request.setAttribute("msg", "Invalid User Name and Password....");
			request.getRequestDispatcher("../Admin/index.jsp").forward(request, response);
		}
	}
}