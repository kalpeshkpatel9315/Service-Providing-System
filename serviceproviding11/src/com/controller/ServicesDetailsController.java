package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.ServicesDetailsDao;
import com.dao.ViewUserDao;
import com.model.Services_Detail;
import com.model.ViewUserModel;
@WebServlet("/ServicesDetailsController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, // 512MB
maxFileSize = 1024 * 1024 * 512, // 512MB
maxRequestSize = 1024 * 1024 * 512) // 512MB

public class ServicesDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ServicesDetailsController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("showservicesdetails"))
		{
				List<Services_Detail> user1=new ServicesDetailsDao().getservicesdetails();
				if(user1 !=null)
				{
							request.setAttribute("user1", user1);
							request.getRequestDispatcher("admin1/viewservicesdetails.jsp").forward(request, response);
				}
		}  
		 else if(action.equalsIgnoreCase("Showserv"))
		{
			   int serv_id=Integer.parseInt(request.getParameter("serv_id"));
				List<Services_Detail> user1=new ServicesDetailsDao().showservicesdetails(serv_id);
				if(user1 !=null)
				{
							request.setAttribute("user1", user1);
							request.getRequestDispatcher("servicesdetails.jsp").forward(request, response);
				}
		}
		 else if(action.equalsIgnoreCase("seedetails"))
			{
				   int serv_det_id=Integer.parseInt(request.getParameter("serv_det_id"));
					List<Services_Detail> user1=new ServicesDetailsDao().seedetails(serv_det_id);
					if(user1 !=null)
					{
								request.setAttribute("user1", user1);
								request.getRequestDispatcher("cooking.jsp").forward(request, response);
					}
			}  
		 else if(action.equalsIgnoreCase("placeorder"))
			{
				   int serv_det_id=Integer.parseInt(request.getParameter("serv_det_id"));
				   Services_Detail user1=new ServicesDetailsDao().placeorder(serv_det_id);
					//List<ViewUserModel> userdetail=new ViewUserDao().getuserdetails();
					if(user1 !=null)
					{
								request.setAttribute("user1", user1);
								//request.setAttribute("userdetail", userdetail);
								request.getRequestDispatcher("porder.jsp").forward(request, response);
					}
			}  
			
		else if(action.equalsIgnoreCase("Update"))
		{
				int serv_det_id=Integer.parseInt(request.getParameter("serv_det_id"));
				Services_Detail user1=new ServicesDetailsDao().editservices(serv_det_id);
				if(user1 !=null)
				{
							request.setAttribute("editservicedetail", user1);
							request.getRequestDispatcher("admin1/updateservicedetails.jsp").forward(request, response);
				}
		}
		else if(action.equalsIgnoreCase("Delete"))
		{
							int serv_det_id=Integer.parseInt(request.getParameter("serv_det_id"));
							int x=new ServicesDetailsDao().doDeleteData(serv_det_id);
							if(x>0)
							{
								request.setAttribute("msg", "Record Deleted...");
								response.sendRedirect("ServicesDetailsController?action=showservicesdetails");
							}
							else
							{
								request.setAttribute("msg", "Record not Deleted...");
								response.sendRedirect("ServicesDetailsController?action=showservicesdetails");
							}	
		}
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		Services_Detail dmodel=new Services_Detail();
		
		String savePath = "C://Users//Kalpesh Patel//eclipse-workspace//serviceproviding11//WebContent//Serviceimages";
		File fileSaveDir=new File(savePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
		}
		Part file=request.getPart("serv_img");
		 	String fileName=extractfilename(file);
		    file.write(savePath+File.separator+fileName);
		    String filePath=savePath+File.separator+fileName;
		    dmodel.setServ_img(savePath);
		/* smodel.setServ_name(request.getParameter("serv_name")); */
		dmodel.setServ_img(fileName);
		System.out.println(fileName);
		if(action.equalsIgnoreCase("Add"))
		{
			dmodel.setServ_subname(request.getParameter("serv_subname"));
			dmodel.setServ_detail(request.getParameter("serv_detail"));
			
			dmodel.setServ_id(Integer.parseInt(request.getParameter("serv_id")));
			dmodel.setPrice(Integer.parseInt(request.getParameter("price")));
			//dmodel.setServ_img(request.getParameter("serv_img")); 
			
			int x =new ServicesDetailsDao().getServicesDetails(dmodel);
		   if(x>0)
		  {
			request.setAttribute("msg", "Record inserted...");
	     	response.sendRedirect("admin1/addservicedetails.jsp");
	     }
		   else
			  {
			 	request.setAttribute("msg", "Record not inserted...");
				response.sendRedirect("admin1/addservicedetails.jsp");
			  }	   
	   }
		else if(action.equalsIgnoreCase("Update"))
		{
		     Services_Detail sduser=new Services_Detail();
		   //  dmodel.setServ_id(Integer.parseInt(request.getParameter("serv_id")));
		     sduser.setServ_det_id(Integer.parseInt(request.getParameter("serv_det_id")));
		     sduser.setServ_subname(request.getParameter("serv_subname"));
		     sduser.setServ_detail(request.getParameter("serv_detail"));
		     
		     sduser.setPrice(Integer.parseInt(request.getParameter("price")));
		     sduser.setServ_img(request.getParameter("serv_img"));
		     int x=new ServicesDetailsDao().doUpdateServices(sduser);
		     if(x>0)
				{
					request.setAttribute("msg", "Record updated....");
					response.sendRedirect("ServicesDetailsController?action=showservicesdetails");
				}
		}
	}
	private String extractfilename(Part file) {
		String cd = file.getHeader("content-disposition");
	    String[] items = cd.split(";");
	    for (String string : items) {
	        if (string.trim().startsWith("filename")) {
	            return string.substring(string.indexOf("=") + 2, string.length()-1);
	        }
	    }
	    return "";
	}

}
