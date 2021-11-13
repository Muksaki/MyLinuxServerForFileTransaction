package com.ht.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtils {
	private static final String className = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://localhost:3306/CreService";
	private static final String user = "root";
	private static final String password = "123456";
	                                                                                                                           
	
	static{
		try{
			//Register
			Class.forName(className);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	//Get Connection
	public static Connection getConn(){
		Connection conn = null;
		try{
			conn = DriverManager.getConnection(url, user, password);
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return conn;
	}
	
	//Close Resources
	public static void close(Connection conn, PreparedStatement ps, ResultSet rs){
		if(conn != null){
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		
		if(ps != null){
			try{
				ps.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		
		if(rs != null){
			try{
				rs.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}

}