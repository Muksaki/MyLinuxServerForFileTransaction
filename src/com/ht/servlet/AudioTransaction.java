package com.ht.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@SuppressWarnings("serial")
public class AudioTransaction extends HttpServlet {
	private static final String UPLOAD_DIRECTORY = "audioupload";
	
	private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
	private static final int MAX_FILE_SIZE      = 1024 * 1024 * 1024; // 1GB
	private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 1034;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		getServletContext().getRequestDispatcher("/Error1.jsp").forward(
                request, response);
	}
	
	public static boolean deleteFile(File dirFile) {
	    // 如果dir对应的文件不存在，则退出
	    if (!dirFile.exists()) {
	        return false;
	    }

	    if (dirFile.isFile()) {
	        return dirFile.delete();
	    } else {

	        for (File file : dirFile.listFiles()) {
	            deleteFile(file);
	        }
	    }

	    return dirFile.delete();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String path = "/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/upload/tmp.txt";
		File tmp = new File(path);
		
		String id = null;
		try{
			BufferedReader bf = new BufferedReader(new FileReader(tmp));
			id = bf.readLine();
			bf.close();
		}catch(IOException e){
			System.out.println("1");
		}
		//tmp.delete();
		
		//For the form received is requested by HttpRequest POST, only doPost Method has to be Overided.
		if (!ServletFileUpload.isMultipartContent(request)) {
            
            PrintWriter writer = response.getWriter();
            writer.println("Error: The form must inlucde enctype=multipart/form-data");
            writer.flush();
            return;
        }
		
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setFileSizeMax(MAX_FILE_SIZE);
        upload.setSizeMax(MAX_REQUEST_SIZE);
        upload.setHeaderEncoding("UTF-8"); 
        String uploadPath = getServletContext().getRealPath("/") + File.separator + UPLOAD_DIRECTORY;
        File uploadDir = new File(uploadPath);
        if(uploadDir.exists()){
        	deleteFile(uploadDir);
        }
        
        if (!uploadDir.exists()) 
            uploadDir.mkdir();
      
        try {
            List<FileItem> formItems = upload.parseRequest(request);
 
            if (formItems != null && formItems.size() > 0) {
                for (FileItem item : formItems) {
                    if (!item.isFormField()) {
                        //String fileName = new File(item.getName()).getName();//store name
                    	
                        String filePath = uploadPath + File.separator + "replace" + id + ".wav";
                        File storeFile = new File(filePath);
                        System.out.println(filePath);
                        item.write(storeFile);
                        request.setAttribute("message",
                            "File Upload Success!");
                    }
                }
            }
        } catch (Exception ex) {
            request.setAttribute("message",
                    "Error Message: " + ex.getMessage());
        }
       String []para1=new String[] {"/root/anaconda3/bin/python",
		"/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/WEB-INF/classes/com/ht/servlet/replace.py"};
		PythonInvoke.pythoninvoke(para1);
        
        getServletContext().getRequestDispatcher("/SubTitlePresentation.jsp").forward(
                request, response);
	
	}

}
