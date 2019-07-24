package com.linhai.controller;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.linhai.utils.SendEmailUtil;

/**
 * 注册账号控制器
 * @author Administrator
 */
@Controller
public class RegisteredController {


	
	//注册
		@RequestMapping(value="/registered",method= RequestMethod.GET)
		public String getregistered() {
			return "registered";
			
		}
		/**
		 * 获取QQ邮箱验证码
		 * @param req
		 * @param resp
		 * @return
		 * @throws UnsupportedEncodingException
		 */
		@ResponseBody
		@RequestMapping(value="/verification",method= RequestMethod.POST )
		public  String getQQverification(HttpServletRequest req,HttpServletResponse resp) throws UnsupportedEncodingException {
			req.setCharacterEncoding("UTF-8");
			String attribute = req.getParameter("jsondata");
			boolean matches = attribute.matches("[1-9][0-9]{4,14}");
			if(matches) {
				
				return "ERROR";
				
			}else {
				if(attribute !=null) {
					System.out.println("qq账号："+attribute);
					SendEmailUtil util = new SendEmailUtil();
					String verificationCodesum = util.getVerificationCodesum();
					System.out.println("qq账号："+verificationCodesum);
					util.qqVerification(attribute,verificationCodesum);
				}
			}
			return "SUCCESS";
		}
		
		
		
		
	
}
