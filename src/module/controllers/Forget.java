package module.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.utility.DB_Connection;
import connection.utility.Date_Utility;
public class Forget extends HttpServlet 
{  
	private static final long serialVersionUID = 1L;
	Date_Utility du=new Date_Utility();
		
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
		response.setContentType("text/html");
		PrintWriter out = response.getWriter(); 
		
		String e=request.getParameter("email");  
		String p=request.getParameter("password"); 
		
	try {
		
		Connection con=DB_Connection.getConnection();
		
		PreparedStatement ps=con.prepareStatement("UPDATE PGSREGISTER SET PASSCODE=?,CREATED_DATE=TO_TIMESTAMP(?, 'YYYY-MM-DD HH24:MI:SS.FF') WHERE MAILID =?");
	 				
		
		ps.setString(1,p);
	    ps.setString(2, du.dateFormatSRId());
	    ps.setString(3,e);
	    
	    int i=ps.executeUpdate();  
		if(i>0) {
			//out.println("Done");
			response.sendRedirect("ForgetAck.jsp");
		}else {
			//out.println("Couldn't update");
			response.sendRedirect("forget.jsp");
			HttpSession  session=request.getSession();
	        session.setAttribute("forGet", "Entred Email Address Dosen't Exist!");
	        
	        return;
		}
		
	} 
	catch(Exception e2) 
	{
		System.out.println(e2);
	}            
	out.close();
	}
}
