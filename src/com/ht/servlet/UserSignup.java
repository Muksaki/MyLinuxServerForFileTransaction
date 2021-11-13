package com.ht.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ht.servlet.DBUtils;

import java.sql.*;
import java.util.Random;
@SuppressWarnings("serial")
public class UserSignup extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		doPost(request, response);
	}
	
	
	public static String getRandomString(int length){
	     String str="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	     Random random=new Random();
	     StringBuffer sb=new StringBuffer();
	     for(int i=0;i<length;i++){
	       int number=random.nextInt(62);
	       sb.append(str.charAt(number));
	     }
	     return sb.toString();
	 }
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String login_name = request.getParameter("loginName");
		String login_pwd = request.getParameter("userword1");
		String nlogin_pwd = request.getParameter("userword2");
		String user_name = request.getParameter("userName");
		String email = request.getParameter("e-mail");
		String tel = request.getParameter("telephone");
		String bindingRole = request.getParameter("binding");
		String uuid = getRandomString(20);
		
		
		if(login_name == "" || login_pwd == ""){
			System.out.println("Case1");
			out.println("<script>alert(\"Username or Password cannot be void!\");</script>");
			response.sendRedirect("SignUp.jsp");
			return;
		}
		if(!login_pwd.equals(nlogin_pwd)){
			System.out.println("Case2");
			out.println("<script>alert(\"Password is not the same.\");</script>");
			response.sendRedirect("SignUp.jsp");
			return;
		}
		
		String sql1 = "INSERT INTO sys_user(login_name, login_pwd, user_name, email, tel, bindingRole, uuid) values(" + "'" + login_name + "'" + "," + "'"+ login_pwd + "'" + "," + "'"+ user_name + "'" + "," + "'"+ email + "'" + "," + "'" + tel + "'" + "," + bindingRole + "," + "'"+ uuid + "'" + ")";
		PreparedStatement st = null;
		try{
			Connection conn = DBUtils.getConn();
			st = conn.prepareStatement(sql1);
			st.execute();
			
			DBUtils.close(conn, st, null);
			
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		//Passing a message to notice a successful sign up.
		//In which page?
		//Redirect to UserLogin.jsp.
		request.setAttribute("message", "Successfully signed up!");
		request.setAttribute("uuid", uuid);
		getServletContext().getRequestDispatcher("/SignUpSuccess.jsp").forward(request, response);
	}

}
