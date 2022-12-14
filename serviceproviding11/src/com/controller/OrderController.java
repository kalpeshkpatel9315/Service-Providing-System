package com.controller;
import java.io.IOException;

import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.OrderDao;

import com.model.OrderModel;

@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OrderController() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("Order Controller Called");
		String action=request.getParameter("action");
		
		/*
		 * if(action.equalsIgnoreCase("updatecustomerorder")) { int
		 * o_id=Integer.parseInt(request.getParameter("o_id")); ViewUserModel user1=new
		 * ViewUserDao().getuserdetails(uid); if(user1 != null) {
		 * request.setAttribute("user1", user1);
		 * request.getRequestDispatcher("admin1/updateuser.jsp").forward(request,
		 * response); } }
		 */
		if(action.equalsIgnoreCase("deleteorder"))
		{
			int o_id=Integer.parseInt(request.getParameter("o_id"));
			int x=new OrderDao().deleteorder(o_id); 
			if(x>0)
			{
				request.setAttribute("msg", "Record Deleted..");
				//request.getRequestDispatcher("../admin1/viewuser.jsp").forward(request, response);
				response.sendRedirect("OrderController?action=showorder");
			}
			
		}
		if(action.equalsIgnoreCase("deletecustomerorder"))
		{
			int o_id=Integer.parseInt(request.getParameter("o_id"));
			int x=new OrderDao().deleteorder(o_id); 
			if(x>0)
			{
				request.setAttribute("msg", "order cancelled..");
				//request.getRequestDispatcher("../admin1/viewuser.jsp").forward(request, response);
				response.sendRedirect("index.jsp");
			}
			
		}
		
		
		if(action.equalsIgnoreCase("confirm"))
		{
			int o_id=Integer.parseInt(request.getParameter("o_id"));
			System.out.println("Order Id"+o_id);
			int x=new OrderDao().approverequest(o_id);
			if(x >0)
			{
						response.sendRedirect("spindex.jsp");
			}
		}
		if(action.equalsIgnoreCase("cancel"))
		{
				
			int o_id=Integer.parseInt(request.getParameter("o_id"));
			System.out.println("Order Id"+o_id);
			int x=new OrderDao().cancelrequest(o_id);
			if(x >0)
			{
						
						response.sendRedirect("spindex.jsp");
			}

		}
		if(action.equalsIgnoreCase("conformorder"))
		{
			int o_id=Integer.parseInt(request.getParameter("o_id"));
			System.out.println("darsh"+o_id);
			int x=new OrderDao().conformorder(o_id);
			if(x >0)
			{
						response.sendRedirect("spindex.jsp");
			}
		}
		
		if(action.equalsIgnoreCase("showorder"))
		{
				List<OrderModel> orderdetails=new OrderDao().getorderdetails();
				if(orderdetails !=null)
				{
							request.setAttribute("orderdetails", orderdetails);
							request.getRequestDispatcher("admin1/vieworder.jsp").forward(request, response);
				}
		}
		if(action.equalsIgnoreCase("showserviceprovider"))
		{
				
				int serv_det_id=Integer.parseInt(request.getParameter("serv_det_id"));
				int o_id=Integer.parseInt(request.getParameter("o_id"));
				System.out.println("inside controller");
				List<OrderModel> showserviceprovider=new OrderDao().getserviceproviderdetails(serv_det_id,o_id);
				
				
				if(showserviceprovider !=null)
				{
							
							request.setAttribute("showserviceprovider", showserviceprovider);
							
							request.getRequestDispatcher("admin1/showserviceprovider.jsp").forward(request, response);
				}
		}
		if(action.equalsIgnoreCase("vieworder"))
		{
				
				int u_id=Integer.parseInt(request.getParameter("u_id"));
				System.out.println("inside controller");
				List<OrderModel> vieworder=new OrderDao().vieworder(u_id);
				
				if (vieworder!=null)
				{
							
							request.setAttribute("vieworder", vieworder);
							
							request.getRequestDispatcher("vieworder.jsp").forward(request, response);
				}
		}
		
		
		
		
		if(action.equalsIgnoreCase("viewordersp"))
		{
				
				int u_id=Integer.parseInt(request.getParameter("uid"));
				System.out.println("inside controller");
				List<OrderModel> viewordersp=new OrderDao().viewordersp(u_id);
				
				if (viewordersp!=null)
				{
							
							request.setAttribute("viewordersp", viewordersp);
							
							request.getRequestDispatcher("viewordersp.jsp").forward(request, response);
				}
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//String action=request.getParameter("action");
			OrderModel omodel=new OrderModel();
			omodel.setServ_det_id(Integer.parseInt(request.getParameter("serv_det_id")));
			omodel.setU_id(Integer.parseInt(request.getParameter("u_id")));
			//omodel.setServ_subname(request.getParameter("serv_subname"));
			//omodel.setF_name(request.getParameter("f_name"));
			omodel.setP_no(request.getParameter("p_no"));
			omodel.setE_mail(request.getParameter("e_mail"));
			
			omodel.setAddress(request.getParameter("address"));
			omodel.setO_date(request.getParameter("o_date"));
			omodel.setO_time(request.getParameter("o_time"));
			omodel.setPrice(Integer.parseInt(request.getParameter("price")));
			//System.out.println("don"+omodel.getP_no());
			//System.out.println("Time is.. "+request.getParameter("o_time"));
			int x =new OrderDao().getBookingData(omodel);
			
		   if(x>0)
		  {
		
			
			
			HttpSession session=request.getSession(true);
			session.setAttribute("om", omodel.getPrice());
			//session1.setAttribute("p_no", omodel.getP_no());
			//session1.setAttribute("e_mail", omodel.getE_mail());
			response.sendRedirect("pgRedirect.jsp");
			//request.getRequestDispatcher("pgRedirect.jsp").forward(request, response);
		  }
		  else
		  {
			request.setAttribute("msg", "Record not inserted...");
			response.sendRedirect("porder.jsp");
		  }	   
	
	}

}
