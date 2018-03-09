package com.goods;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.backstage.DBUtilDaoToUser;
import com.backstage.DBUtilDaoImpToUser;
import com.backstagePage.Page;
import com.userDao.Users;

public class BackStageServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public BackStageServlet() {
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
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

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		 System.out.println("Cutomer service");
		 String method=(String) request.getAttribute("method");
		 try {
			Method m=this.getClass().getMethod(method, HttpServletRequest.class,HttpServletResponse.class);
			m.invoke(this, request,response);	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 			
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

	
	public void del(HttpServletRequest request, HttpServletResponse response){
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8"); 
		int id=Integer.parseInt(request.getParameter("userId"));
		DBUtilDaoToUser DBDao=new DBUtilDaoImpToUser();
		DBDao.delUser(id);
		try {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}
	/*负责查找到数据 放到修改表中*/
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8"); 
		DBUtilDaoToUser dbu=new DBUtilDaoImpToUser();
		
		String id=request.getParameter("userId");
		int i=Integer.parseInt(id);
		Users us=(Users)dbu.query(i);
		request.setAttribute("user", us);
		request.getRequestDispatcher("update.jsp").forward(request, response);
			
	}
	
	/*把表中的数据存到数据库中*/
	public void update2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8"); 
		DBUtilDaoToUser dbu=new DBUtilDaoImpToUser();
		String id=request.getParameter("userId");
		int id2=Integer.parseInt(id);
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		String tel=request.getParameter("tel");
		Users users=new Users();
		users.setUserId(id2);
		users.setUserName(userName);
		users.setPassWord(password);
		users.setTel(tel);
		dbu.updateUser(users);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	
	
	public void userlist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8"); 
		DBUtilDaoToUser dbu=new DBUtilDaoImpToUser();
	    List list=dbu.queryAll();
	    request.setAttribute("backList", list);
	    request.getRequestDispatcher("user.jsp").forward(request, response);
		
	}
	
	public void userlistByPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		    request.setCharacterEncoding("utf-8");
		    response.setContentType("text/html;charset=utf-8"); 
		    HttpSession hs=request.getSession(); 
		    DBUtilDaoToUser dbu=new DBUtilDaoImpToUser();
		    List list1=dbu.queryAll();
		    int len=list1.size();
		    Page pa1=new Page(len);
		    if( hs.getAttribute("pageNo")!=null){
		        int one=(Integer) hs.getAttribute("pageNo");
		        pa1.setPageNo(one);  
		    }
		    int pageCount=pa1.getPageCount();
		    String i=null;
		    if(request.getParameter("page")!=null){
		    	i=request.getParameter("page");
		    	
		    if(i.equals("first")){
		    	
		    	pa1.setPageNo(1);
		    }
		    if(i.equals("pre")){
		    	int j=pa1.getPageNo();
		    	if(j>1){
		    	pa1.setPageNo(j-1);
		    	}
		    }
		    if(i.equals("next")){
		    	int j=pa1.getPageNo();
		    	if(j<pageCount){
		    	pa1.setPageNo(j+1);
		    	}
		    }
		    if(i.equals("last")){
		    	
		    	pa1.setPageNo(pageCount);
		    	
		    }
		    
		   }
		    int pageNo=pa1.getPageNo();
		    hs.setAttribute("pageNo", pageNo);
		    List list=dbu.queryAllByPage(pa1);
		    request.setAttribute("backList", list);
		    request.getRequestDispatcher("user.jsp").forward(request, response);
		
		
	}
	
}
