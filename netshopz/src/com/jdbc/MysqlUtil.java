package com.jdbc;
import java.sql.Connection;
import java.sql.ParameterMetaData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MysqlUtil {
	
	
	
	   public static int update(String sql,Object[] params) throws SQLException{
	   Connection con=jdbcDemo.getCon();
       PreparedStatement state=con.prepareStatement(sql);
	   
       for (int i = 0; i <params.length; i++) {
		 state.setObject(i+1, params[i]);    	   
	   }
	   return  state.executeUpdate();
	}

	  

         public static Object query(String sql,Object[] params,ResultSetHandler rsh) throws Exception{
		 Connection con=jdbcDemo.getCon();
	     PreparedStatement state=con.prepareStatement(sql);
	     if(params!=null){
	     for (int i = 0; i < params.length; i++) {
			 state.setObject(i+1, params[i]);    	   
		   }}
         ResultSet rs=state.executeQuery(); 
         return rsh.handler(rs);    
	  }
	
	
	
	
	
}
