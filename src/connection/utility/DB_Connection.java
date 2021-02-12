package connection.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {


	public static Connection getConnection()
	{
		Connection con = null;
		String url="jdbc:oracle:thin:@DESKTOP-5DJ472J:1521/orcl";
		String userName="SYSTEM";
		String passcode="swift3";
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection(url, userName, passcode);
			
		}
		catch(Exception e)
		{
			System.out.println("Catch block @ DB utility.Not able to load the driver"+e.getMessage());
			e.printStackTrace();
		}
		
		return con;

	}

}

