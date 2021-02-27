package util;

import java.sql.Connection;
import java.sql.DriverManager;


public class DbConnection {
	private static Connection con=null;
	//load the driver
	//get the connection
	//creating statement-sql query
	//execute get Result
  //close
	public static  Connection getConn(){
		
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		   con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","root");
		   }
		catch(Exception e)
		{e.printStackTrace();	}	
		return con;
	
	}
}
