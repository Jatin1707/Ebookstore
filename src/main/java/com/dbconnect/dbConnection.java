package com.dbconnect;

import java.sql.*;

public class dbConnection {
	
	public static Connection takeConnection() {
	
	Connection con = null;	
		
	try {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		String path = "jdbc:mysql://localhost:3306/ebooks";
		String user = "root";
		String password = "Jatin@2001";
		con = DriverManager.getConnection(path,user,password);
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return con;
 }
}