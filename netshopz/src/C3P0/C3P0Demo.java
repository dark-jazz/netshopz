package C3P0;

import java.sql.Connection;
import java.sql.SQLException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3P0Demo {
  private static ComboPooledDataSource ds=new ComboPooledDataSource();
	
  public static Connection getConnection() throws SQLException{
	   return  ds.getConnection();
	    
  }	
  
  public static ComboPooledDataSource getDataSource(){
	  return ds;
	  
  }
}
