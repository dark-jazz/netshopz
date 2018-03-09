package com.net;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.userDao.userDao;
import com.userDao.userDaoImp;

public class do_login extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public do_login() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
	
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		String select=request.getParameter("select");
		
		userDao userDao=new userDaoImp();
	    int result=userDao.login(userName, password);
	    out.print(result);
		if(result==1){
			Cookie ck=new Cookie("userName", userName);
			Cookie pw=new Cookie("password",password);
			Cookie st=null;
			//ck.setPath("/");
			
			
			if(select!=null){
			if(select.equals("on")==true){
				
				Cookie ck1=new Cookie("userName1", userName);
				
				response.addCookie(ck1);	
			    response.addCookie(pw);
			    //response.addCookie(st2);
			}}
			
			response.addCookie(ck);
			HttpSession hs=request.getSession();
			hs.setAttribute("flag", "logged");
			hs.setAttribute("userName",userName);
			
		
			response.sendRedirect("index.jsp");
			
		}else{
			request.setAttribute("msg", "该用户不存在或者密码错误");
			request.setAttribute("msg1","block");
			request.getRequestDispatcher("enter.jsp").forward(request, response);
			}
		
		
		
		
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	this.doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
