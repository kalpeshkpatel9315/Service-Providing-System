package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Reviewdao;
import com.model.Reviewmodel;
@WebServlet("/Reviewcontroller")
public class Reviewcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Reviewcontroller() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("viewreviewcu"))
		{
			List<Reviewmodel> vrcu=new Reviewdao().viewreviewcu();
			if(vrcu!=null)
			{
				request.setAttribute("vrcu", vrcu);
				request.getRequestDispatcher("viewreviewcu.jsp").forward(request, response);
			}
		}
		if(action.equalsIgnoreCase("viewreview"))
		{
			List<Reviewmodel> vr=new Reviewdao().viewreview();
			if(vr!=null)
			{
				request.setAttribute("vr", vr);
				request.getRequestDispatcher("admin1/viewreview.jsp").forward(request, response);
			}
		}
		if(action.equalsIgnoreCase("delete"))
		{
			int rid=Integer.parseInt(request.getParameter("rid"));
			int vr=new Reviewdao().deletereview(rid);
			if(vr>0)
			{
				request.setAttribute("msg", "Record Deleted..");
				//request.getRequestDispatcher("../admin1/viewuser.jsp").forward(request, response);
				response.sendRedirect("Reviewcontroller?action=viewreview");
			}
			
		}

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String c_name=request.getParameter("c_name");
		String serv_name=request.getParameter("serv_name");
		int rating=Integer.parseInt(request.getParameter("star-rating-2"));
		String feedback=request.getParameter("feedback");
		Reviewmodel r=new Reviewmodel();
		r.setC_name(c_name);
		r.setServ_name(serv_name);
		r.setRating(rating);
		r.setFeedback(feedback);
		int r1=new Reviewdao().insertreview(r);
		if(r1>0)
		{
			response.sendRedirect("review.jsp");
		}
		
	}

}
