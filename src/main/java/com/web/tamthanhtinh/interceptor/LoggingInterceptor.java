package com.web.tamthanhtinh.interceptor;

import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.web.tamthanhtinh.engine.FacadeEngine;
import com.web.tamthanhtinh.model.Sessions;
import com.web.tamthanhtinh.service.*;


public class LoggingInterceptor implements HandlerInterceptor {

	static final Logger logger = LoggerFactory.getLogger(LoggingInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String sessionCurrent = (String) session.getAttribute("session");
		
		//check session if null create session
		if(sessionCurrent == null) {
			sessionCurrent = FacadeEngine.generateCode();
			session.setAttribute("session", sessionCurrent);			
			
			StringBuilder URL = new StringBuilder(request.getRequestURI().replace("/tamthanhtinh", ""));
			System.out.println("URL: "+ URL+getAllParam(request));
			URL.append(getAllParam(request));
			response.sendRedirect("countviews?sessionCurrent="+sessionCurrent
									+"&URL="+URL);
			logger.debug("=======> day la logger");
			return false;
		}
		
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}
	/*
	 * get parameters anf value on the url by request
	 */
	public String getAllParam(HttpServletRequest request){
		
		StringBuilder temp = new StringBuilder();
		temp.append('?');
		Enumeration<String> e = request.getParameterNames();
		while(e.hasMoreElements()){
			String name = e.nextElement();
			temp.append(name+'=');
			temp.append(request.getParameter(name));
		}
		return temp.toString();
	}
	
	

}
