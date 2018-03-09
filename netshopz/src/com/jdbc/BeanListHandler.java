package com.jdbc;
import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


public class BeanListHandler implements ResultSetHandler {


	private Class clazz;
	public BeanListHandler(Class clazz) {
		super();
		this.clazz = clazz;
	}
	
	public Object handler(ResultSet rs) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		ResultSetMetaData rsmd=rs.getMetaData();
		int length=rsmd.getColumnCount();
		List list=new ArrayList();
		
		
		while(rs.next()){
			Object bean=this.clazz.newInstance();
			for(int i=1;i<=length;i++){
			   String colname=rsmd.getColumnName(i);     
			   Field f=bean.getClass().getDeclaredField(colname);
			   Object value=rs.getObject(i);  
			   f.setAccessible(true);                               
			   f.set(bean,value);                 
			 
			}	 
			list.add(bean);		
		}
		return list;
	}

}
