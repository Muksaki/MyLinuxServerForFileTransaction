package com.ht.servlet;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class SoundTransformation extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String text = request.getParameter("newtext2");
		text = new String(text.getBytes("ISO8859-1"), "UTF-8");
		
		String id = request.getParameter("id");
		
		String path = "/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/upload/tmp.txt";
		
		String old_audio = "/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/tmp/replace6.wav";
		
		String new_audio = "/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/tmp/replace"+ id +".wav";
		
		File old = new File(old_audio);
		
		File newau = new File(new_audio);
		
		old.renameTo(newau);
		
		File tmp = new File(path);
		if(tmp.exists())
			tmp.delete();
		try{
			tmp.createNewFile();
		}catch(IOException e){
			e.printStackTrace();
		}
		try{
			PrintWriter pw = new PrintWriter(new FileWriter(tmp));
			pw.print(id + "\n" + text);
			pw.flush();
			pw.close();
		}catch(IOException e){ 
			e.printStackTrace();
		}
		
		
		String []para1=new String[] {"/root/anaconda3/bin/python",
		"/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/WEB-INF/classes/com/ht/servlet/change_srt.py"};
		PythonInvoke.pythoninvoke(para1);
		
		String []para2=new String[] {"/root/anaconda3/bin/python",
		"/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/WEB-INF/classes/com/ht/servlet/Srt2JSON.py"};
		PythonInvoke.pythoninvoke(para2);
		
		tmp.delete();
		
		String []para3=new String[] {"/root/anaconda3/bin/python",
		"/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/WEB-INF/classes/com/ht/servlet/replace1.py"};
		PythonInvoke.pythoninvoke(para3);
		
		
		response.sendRedirect("/MyLinuxServerForFileTransaction/SubTitlePresentation.jsp");
		
	}

}
