package com.database;

import java.sql.*;

public class MyConnection {
	public static Connection con;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if(con==null || con.isClosed()) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/village_local","root","Ram@Lohar123");
		}
		return con;
	}

}
