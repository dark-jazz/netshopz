package com.net;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.orderDao.Order;
import com.orderDao.OrderDaoImp;
import com.userDao.Users;
import com.userDao.userDaoImp;

public class do_buycar extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public do_buycar() {
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
		HttpSession hs=request.getSession();
		
         if(hs.getAttribute("flag")=="logged"){
        	 //hs.getAttribute()
        	String userName=(String) hs.getAttribute("userName");
        	userDaoImp fun=new userDaoImp();
        	Users user=fun.query(userName);
        	int id=user.getUserId();
        	OrderDaoImp fun2=new OrderDaoImp();
        	List orderList=fun2.query(id);
        	
            hs.setAttribute("orderlist", orderList);
        	response.sendRedirect("./buycar.jsp"); 
         } 
         
         if(hs.getAttribute("flag")=="logout"){
        	 response.sendRedirect("./enter.jsp"); 
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
