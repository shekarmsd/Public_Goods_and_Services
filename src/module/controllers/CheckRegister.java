package module.controllers;

import java.io.*;  
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;  
import javax.servlet.http.*;  

import connection.utility.DB_Connection;
import connection.utility.Date_Utility;

public class CheckRegister extends HttpServlet 
{  
	private static final long serialVersionUID = 1L;
	Date_Utility du=new Date_Utility();
		
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{  
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		            
		String p=request.getParameter("email");    
		          
		try
		{  
		
			Connection con=DB_Connection.getConnection();	
			  
			PreparedStatement ps=con.prepareStatement("SELECT MAILID FROM PGSREGISTER WHERE MAILID=?");  
		  
			ps.setString(1,p);  
			          
			ResultSet rs = ps.executeQuery(); 
			while (rs.next()) {
				
				response.sendRedirect("signup.jsp");
				HttpSession  session=request.getSession();
		        session.setAttribute("errorMsg", "The email address has already taken! Please try with another email address.");
		        
		    
				//out.println("Your already registred");
				//HttpSession  session=request.getSession(true);
			    //session.setAttribute("email", un);
			    //response.sendRedirect("index.jsp");
				return;
				
			}
			
			RequestDispatcher rd = request.getRequestDispatcher("/Register");
			rd.forward(request, response);
			//out.println("Direct to register");
			//response.sendRedirect("Register");
			//HttpSession  session=request.getSession(true);
	        //session.setAttribute("errorMessage", "Invalid Credentials! Enter Valid Email / Password ");
			
			               
		}
		catch(Exception e2) 
		{
			System.out.println(e2);
		}            
		out.close();  
	}  
  
}  