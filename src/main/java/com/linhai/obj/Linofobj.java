package com.linhai.obj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.linhai.objInterface.LinOfObjInterface;

import net.sf.json.JSONObject;

public class Linofobj implements LinOfObjInterface {
	


	public boolean verify() throws Exception {
		
		return false;
	}
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		return request;
	}

	public HttpServletResponse getResponse() {
		HttpServletResponse  response = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getResponse();
		return response;
	}
	
	
	public void ajaxError(HttpServletResponse  response,String message) throws IOException {
		PrintWriter writer = response.getWriter();
		writer.write(message);
		writer.flush();
		writer.close();
		
		
		
	}
	

	
}
