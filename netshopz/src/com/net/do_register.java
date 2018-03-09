package com.net;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.userDao.Users;
import com.userDao.userDao;
import com.userDao.userDaoImp;

public class do_register extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public do_register() {
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
		request.setCharacterEncoding("utf-8");     //设置编码方式
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();   //打印流
		
		String userName=request.getParameter("userName");  //获得action中传递过来的信息
		String password=request.getParameter("password");
		String tel=request.getParameter("tel");
		out.print(userName+password+tel);
		
		userDao userDao=new userDaoImp();//实现
		Users user=new Users(0, userName,password,tel);  
		out.print(user.getUserName()+user.getPassWord()+user.getTel());
		
		int i=userDao.addUser(user);  //用户加入数据库
		out.print(i);
		if(i>0){
			response.sendRedirect("enter.jsp");
		}else{
			request.setAttribute("msg", "注册失败，该用户名已经存在");
			request.setAttribute("msg1","block");
			request.getRequestDispatcher("register.jsp").forward(request, response);
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
