package com.controller;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;


import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.model.ForgotPswd;
import com.dao.ForgotDao;
@WebServlet("/ForgotController")
public class ForgotController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("submit"))
		{
			String email=request.getParameter("email");
			ForgotPswd f=new ForgotPswd();
			ForgotDao dao=new ForgotDao();
			f=dao.checkEmail(email);
			if(f==null)
			{
				request.setAttribute("invalidemail", "Email Address Not Valid");
				request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
			}
			else
			{
				String emailid=f.getEmail();
				String username=f.getName();
				
				final String Senderid = "serviceprovider8055@gmail.com";
				final String password = "kalpesh@9315";
				Properties props = new Properties();
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.starttls.enable", "true");
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.port", "587");
				Session session = Session.getInstance(props, new Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(Senderid, password);
					}
				});
				//session.setDebug(true);

				try {
					Random rand = new Random();
					int otp = rand.nextInt(900000) + 100000;
					Message message = new MimeMessage(session);
					message.setFrom(new InternetAddress(Senderid));
					message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailid));// to
																									// mail
																									// address.
					message.setSubject("OTP Request");
					String msg1 = "<!DOCTYPE html><html><head></head><body><center><div style='background-color:#f8f8f8; width:500px; height:200px'><div style='background-color:#00e58b; width:500px; height:50px'><h3 style='color:white; padding-top:10px;'>EmailDemo.com </h3></div><p style='color:gray; margin-left:-300px;'>Dear "
							+ username + ",</p><br><p style='color:gray; margin-top:-10px;'>" + otp
							+ "  is your One Time Password.Do NOT share this code with anyone for security reasons.this is valid for 10 minutes.</p><div></center></body></html>";
					message.setContent(msg1, "text/html; charset=utf-8");
			
					Transport.send(message);

					request.setAttribute("otp", otp);
					request.setAttribute("email", email);
					System.out.println(f.getEmail());
					request.getRequestDispatcher("SendOTP.jsp").forward(request, response);
					
				} catch (Exception e) {
					request.setAttribute("SendOtpError", "Otp Not Send");
					request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
					e.printStackTrace();
				}
			}
			
		}
		
		else if(action.equalsIgnoreCase("Verify"))
		{

			String otp=request.getParameter("otp");
			String uotp=request.getParameter("uotp");
			String email=request.getParameter("email");
			System.out.println("Verify : "+email);
			if(otp.equalsIgnoreCase(uotp))
			{
				request.setAttribute("Otpmatch", "OTP Match");
				request.setAttribute("email", email);
				request.getRequestDispatcher("ResetPassword.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("notmatch", "OTP Not Match");
				request.getRequestDispatcher("SendOTP.jsp").forward(request, response);
			}
			
			
			
		}
		else if(action.equalsIgnoreCase("Confirm"))
		{
			String pswd=request.getParameter("newpassword");
			String cpswd=request.getParameter("Cpassword");
			String email=request.getParameter("email");
			System.out.println(email);
			if(pswd.equals(cpswd))
			{
				ForgotPswd f=new ForgotPswd();
				//HttpSession session=request.getSession(false);
				//f=(ForgotPswd)session.getAttribute("UserData");
				f.setPassword(pswd);
				f.setEmail(email);
				ForgotDao dao=new ForgotDao();
				int r=dao.resetPassword(f);
				if(r>0)
				{
					response.sendRedirect("login.jsp");
					System.out.println("Password Recovery Success!");
				}
				else
				{
					System.out.println("Error");
				}
			}
			
			
			
		}
		
	}

}
