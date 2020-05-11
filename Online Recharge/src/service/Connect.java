package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect 
{
	public Connection connectMe()
	{
		Connection con=null;
		try {
			//1. Load the Driver
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			
			//2. Create a connection object
			String url="jdbc:sqlserver://DESKTOP-EVCPV0J\\SQLEXPRESS;databasename=Login";
			String user="Amit";
			String password="7794";
			
			con=DriverManager.getConnection(url, user, password);
			
			System.out.println("Connected Happily");
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
		
	}
}
