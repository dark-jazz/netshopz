package com.jdbc;
import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.List;


public class BeanHandler implements ResultSetHandler{
	
	private Class clazz;  
	public BeanHandler(Class clazz) {
		super();
		this.clazz = clazz;
	}
	public Object handler(ResultSet rs) throws Exception{
		// TODO Auto-generated method stub
		
	
		if(rs.next()){
		   Object bean=this.clazz.newInstance();
		   ResultSetMetaData rsmd=rs.getMetaData(); 
		   int length=rsmd.getColumnCount(); 
		   for(int i=1;i<=length;i++){
		   String colname=rsmd.getColumnName(i);   
		   System.out.println(colname); 
		   Object value=rs.getObject(i);
		   System.out.println(value);
		   Field f=bean.getClass().getDeclaredField(colname);
		   f.setAccessible(true);           
		   f.set(bean,value);
		}
		   return bean;
	
	}
           return null;
	}	 
} 
  


		
		
	



