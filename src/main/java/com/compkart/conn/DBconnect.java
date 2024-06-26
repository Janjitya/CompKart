package com.compkart.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	private static Connection con = null;
	
	public static Connection getCon()
	{
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/compkart","root","1234");
			
		}
		catch(Exception e){
			
			e.printStackTrace();
			
		}
		
		return con;
	}

}
