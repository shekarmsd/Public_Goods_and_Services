package module.controllers;

import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  

import connection.utility.DB_Connection;
import connection.utility.Date_Utility;

public class Donation_Form extends HttpServlet 
{  
	private static final long serialVersionUID = 1L;
	Date_Utility du=new Date_Utility();
		
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{  
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String c1=request.getParameter("check1");  
		String c2=request.getParameter("check2");  
		String c3=request.getParameter("check3");   
		String un=request.getParameter("username"); 
		String e=request.getParameter("email"); 
		String ad=request.getParameter("address"); 
		String ad1=request.getParameter("address1"); 
		String pn=request.getParameter("pincode"); 
		String st=request.getParameter("state"); 
		String p=request.getParameter("phone"); 
		          
		try
		{  
		
			Connection con=DB_Connection.getConnection();
			  
			PreparedStatement ps=con.prepareStatement("INSERT INTO DONATION_FORM (ID, FULL_NAME, MAILID, PHONE_NO, ADDRESS_LINE1, ADDRESS_LINE2, PINCODE, STATE, GOODS_ONE, GOODS_TWO, GOODS_THREE, CREATED_DATE) VALUES "
					 + "(DONATION_FORM_ID_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,TO_DATE(?, 'YYYY-MM-DD'))");  
			  
			ps.setString(1,un);  
			ps.setString(2,e);
			ps.setString(3,p);
			ps.setString(4,ad);  
			ps.setString(5,ad1);  
			ps.setString(6,pn);  
			ps.setString(7,st);  
			ps.setString(8,c1);
			ps.setString(9,c2);
			ps.setString(10,c3);  
			ps.setString(11, du.dateFormatSRId());
			          
			int i=ps.executeUpdate();  
			if(i>0) {
				//out.println("Done");
				DonMail ms=new DonMail();
				ms.DoneMail(e,un);
				response.sendRedirect("DonationAck.jsp");
				
			}else {
				//out.println("Error");
				response.sendRedirect("donate.jsp");
			}
			
			               
		}
		catch(Exception e2) 
		{
			System.out.println(e2);
		}            
		out.close();  
	}  
  
}  