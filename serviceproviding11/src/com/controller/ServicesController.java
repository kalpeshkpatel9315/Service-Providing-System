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

import com.dao.ServicesDao;
import com.model.Services;

@WebServlet("/ServicesController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, // 512MB
maxFileSize = 1024 * 1024 * 512, // 512MB
maxRequestSize = 1024 * 1024 * 512) // 512MB
public class ServicesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ServicesController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("showservices"))
		{
				List<Services> user1=new ServicesDao().getServices();
				if(user1 !=null)
				{
							request.setAttribute("user1", user1);
							//response.sendRedirect("admin1/viewuser.jsp");
							request.getRequestDispatcher("admin1/viewservices.jsp").forward(request, response);
				}
		}
		else if(action.equalsIgnoreCase("Delete"))
		{
							int serv_id=Integer.parseInt(request.getParameter("serv_id"));
							int x=new ServicesDao().doDeleteData(serv_id);
							if(x>0)
							{
								request.setAttribute("msg", "Record Deleted...");
								response.sendRedirect("ServicesController?action=showservices");
							}
							else
							{
								request.setAttribute("msg", "Record not Deleted...");
								response.sendRedirect("ServicesController?action=showservices");
							}	
		}
		else if(action.equalsIgnoreCase("Update"))
		{
				int serv_id=Integer.parseInt(request.getParameter("serv_id"));
				Services user1=new ServicesDao().geteditservices(serv_id);
				if(user1 !=null)
				{
							request.setAttribute("editservices", user1);
							//	response.sendRedirect("./admin/dashboard.jsp");
							request.getRequestDispatcher("admin1/updateservices.jsp").forward(request, response);
				}
		}
		

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		Services smodel=new Services();
		String savePath = "C://Users//Kalpesh Patel//eclipse-workspace//serviceproviding11//WebContent//Serviceimages";
		File fileSaveDir=new File(savePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
			
		}
		
		Part file=request.getPart("image");
		 	String fileName=extractfilename(file);
		    file.write(savePath+File.separator+fileName);
		    String filePath=savePath+File.separator+fileName;
		
		  
		    smodel.setImage(savePath);
		smodel.setServ_name(request.getParameter("serv_name"));
		smodel.setImage(fileName);
		request.setAttribute("smodel", smodel);
		
		if(action.equalsIgnoreCase("Add"))
		{
			int x =new ServicesDao().getServicesData(smodel);
		   if(x>0)
		  {
			request.setAttribute("msg", "Record inserted...");
			response.sendRedirect("admin1/addservice.jsp");
		  }
		  else
		  {
			request.setAttribute("msg", "Record not inserted...");
			response.sendRedirect("admin1/addservice.jsp");
		  }	   
	   }
		else if(action.equalsIgnoreCase("Update"))
		{
		     Services suser=new Services();
		     suser.setServ_id(Integer.parseInt(request.getParameter("serv_id")));
		     suser.setServ_name(request.getParameter("serv_name"));
		     suser.setImage(request.getParameter("image"));
		 
		     int x=new ServicesDao().doUpdateServices(suser);
		     if(x>0)
				{
					request.setAttribute("msg", "Record updated....");
					response.sendRedirect("ServicesController?action=showservices");
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
