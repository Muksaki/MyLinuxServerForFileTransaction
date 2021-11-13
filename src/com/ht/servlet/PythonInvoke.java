package com.ht.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

public class PythonInvoke {
	public static void pythoninvoke(String []para) {
        try {
            Process process=Runtime.getRuntime().exec(para);
            BufferedReader reader=new BufferedReader(new InputStreamReader(process.getInputStream(),"GBK"));
            String line;
            while((line=reader.readLine())!=null) {
                System.out.println(line);
            }
            reader.close();
            process.destroy();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}

