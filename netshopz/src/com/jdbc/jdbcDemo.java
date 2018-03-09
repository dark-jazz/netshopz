package com.jdbc;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class jdbcDemo {
    

	private static Connection con=null;
	private static Statement state=null;
	private static String url="jdbc:mysql://127.0.0.1:3306/eshop?useSSL=true";
	private static String user="root";
	private static String password="123123";
	private static PreparedStatement preSta=null;
	private static ResultSet reSet=null;
	
	
	
	static{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(url, user, password);
			state=con.createStatement();	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	
	public static Connection getCon(){          
		return con;		
	}
	
   
	public static Statement getSta(){             
	
		return state;
	}
	
		
	public static PreparedStatement getPreSta(String sql){
		
		try {
			preSta =con.prepareStatement(sql);
			
			return 	preSta;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	public static void free(){             
		try {
			if(reSet!=null&&reSet.isClosed()){ 
				reSet.close();
			}
			
			if(preSta!=null&&!preSta.isClosed()){
				preSta.close();
			}
			if(state!=null&&!state.isClosed()){
				state.close();
			}
			if(con!=null&&!con.isClosed()){
				con.close();
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
		
	
}
