package com.ht.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class getPersonalInformation extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String login_name = request.getParameter("login_name");
		String sql = "select * from sys_user where login_name = '" + login_name + "';";
		PreparedStatement st = null;
		ResultSet rt = null;
		
		
		String true_name = null;
		String email = null;
		String tel = null;
		String subject = "后端开发";
		String bindingrole = null;
		String uuid = null;
		
		
		try{
			Connection conn = DBUtils.getConn();
			st = conn.prepareStatement(sql);
			rt = st.executeQuery();//Get the UUID of the records satisfying login_name and login_password
			System.out.println(true_name + "s10293");
			rt.next();
			
			true_name = rt.getString(4);
			System.out.println(true_name + "10293");
			
			email = rt.getString(9);
			tel = rt.getString(10);
			bindingrole = rt.getString(12);
			uuid = rt.getString(13);
			
			DBUtils.close(conn, st, null);
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		request.setAttribute("login_name", login_name);
		request.setAttribute("true_name", true_name);
		request.setAttribute("email", email);
		request.setAttribute("tel", tel);
		if(bindingrole == "2"){
			request.setAttribute("bindingrole", "Administrator");
		}
		else{
			request.setAttribute("bindingrole", "Teacher");
		}
		request.setAttribute("uuid", uuid);
		request.setAttribute("subject", subject);
		System.out.println(true_name + "e10293");
		getServletContext().getRequestDispatcher("/personalInformation.jsp").forward(request, response);
	}

}
