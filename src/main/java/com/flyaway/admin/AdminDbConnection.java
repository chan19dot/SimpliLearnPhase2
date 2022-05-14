package com.flyaway.admin;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class AdminDbConnection {
	
	public static final String DB_URL = "jdbc:mysql://localhost:3306/flight";
	public static final String USERNAME = "root";
	public static final String PASSWORD = "98765";
	
	
	public static Connection getConn() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
		System.out.println("Connection Established");
		return con;
	}
	
			
		


}
