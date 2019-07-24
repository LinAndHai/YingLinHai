package com.linhai.objInterface;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface LinOfObjInterface {

	public boolean verify() throws Exception;
	public HttpServletRequest getRequest();
	public HttpServletResponse getResponse();
	public  void ajaxError(HttpServletResponse  response, String message) throws IOException ;
}
