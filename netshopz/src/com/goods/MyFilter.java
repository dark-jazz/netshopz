package com.goods;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

public class MyFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request=(HttpServletRequest)arg0;
		HttpServletResponse response=(HttpServletResponse)arg1;
	    String uri=request.getRequestURI();  //Í¨¹ýuriÈ¥
	    String vist=StringUtils.substringAfterLast(uri, "/");
	    System.out.println(vist);
	    if(vist.startsWith("backstage")){
	    	String servletName=StringUtils.substringBetween(vist, "_", "_");	 
	    	System.out.println(servletName);
	    	String method=StringUtils.substringAfterLast(vist, "_");
	    	if(StringUtils.substringBetween(method, "_", "/")!=null){
	    		
	    		method=StringUtils.substringBetween(method, "_", "/");
	    	}
	    	
	    	System.out.println(method);
	    	request.setAttribute("method", method);
	    	request.getRequestDispatcher("/backstage/backjsp/BackStageServlet").forward(request, response);
	    	return;
	    }
	    arg2 .doFilter(request,response);
	}
	
	
	
	
	
	
	
	
	

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
