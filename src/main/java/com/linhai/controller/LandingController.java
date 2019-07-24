package com.linhai.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.linhai.obj.Linofobj;
//登陆页面
@Controller
public class LandingController  extends Linofobj{

	@RequestMapping(value="/landing",method= RequestMethod.GET)
	public String getlanding() {
		return "landing";
		
	}
	
	
	
	
	@RequestMapping(value="/landingUser",method=RequestMethod.POST)
	public String getlandingUser(String user,String pswd) throws Exception {
		
		if(!verify()) {
			 return "landing";
		 }
		 return "index";
	}
	
	@Override
	public boolean verify() throws Exception {
		
		boolean verify = true;
		String user = getRequest().getParameter("user");
		String pswd = getRequest().getParameter("pswd");
		user="";
		if( user==null||"".equals(user) ||  pswd==null||"".equals(pswd) ) {
			verify = false;
		}
		return verify;
	}
	
	
}
