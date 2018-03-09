package com.backstage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.backstagePage.Page;

public class do_userlistByPage extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public do_userlistByPage() {
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
