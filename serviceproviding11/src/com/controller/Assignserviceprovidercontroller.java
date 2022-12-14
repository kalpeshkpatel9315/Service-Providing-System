package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Assignserviceproviderdao;
import com.model.OrderModel;




@WebServlet("/Assignserviceprovidercontroller")
public class Assignserviceprovidercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Assignserviceprovidercontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		/*
		 * if(action.equalsIgnoreCase("viewdata")) { int
		 * serv_det_id=Integer.parseInt(request.getParameter("serv_det_id"));
		 * System.out.println("kalpesh"); int x=new
		 * Assignserviceproviderdao().assignserviceprovider(serv_det_id);
		 * 
		 * 
		 * if(x >0) {
		 * 
		 * 
		 * 
		 * response.sendRedirect("admin1/vieworder.jsp"); }
		 * 
		 * }
		 */	
		if(action.equalsIgnoreCase("viewdata"))
		{
			int u_id=Integer.parseInt(request.getParameter("u_id"));
			int o_id=Integer.parseInt(request.getParameter("o_id"));
			
			List<OrderModel> vieworder=new Assignserviceproviderdao().assignserviceprovider(u_id,o_id);
			
			
			if(vieworder!=null)
			{
						
						
				request.setAttribute("orderdetails", vieworder);
				request.getRequestDispatcher("admin1/vieworder.jsp").forward(request, response);
			}

		}

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
	}

}
