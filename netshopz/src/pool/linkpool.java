package pool;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.SQLFeatureNotSupportedException;
import java.util.LinkedList;
import java.util.logging.Logger;

import javax.sql.DataSource;

import com.jdbc.jdbcDemo;

public class linkpool implements DataSource{

	private static LinkedList pool=new LinkedList();
	private static int init=5;
	private static int max=10;
	private static int min=3;
	private static int count=0;
	
	static{                       //初始化连接池，连接池保有一定数量的连接方便调用
		for(int i=0;i<init;i++)
		{
			pool.addLast(jdbcDemo.getCon());
			count++;
		}
		System.out.println("initailize pool");
		}
	
	
	
	
	public Connection getConnection(){    //从连接池中取connection模仿链表的结构 
		if(pool.size()<=0&&count<max)
		{
			for(int i=0;i<min;i++)
			{
				pool.addLast(jdbcDemo.getCon());   //添加在末尾
				count++;
			}
			System.out.println("添加了3个连接");
		}
		System.out.println("分配1个连接");
		return (Connection) pool.removeFirst();	 //获得头部的数据
		
	}
	
	
	
	public void recall(Connection conn)
	{
		if(pool.size()<max)  //当连接池内连接超过最大值时，才开始回收
		{
		   pool.addLast(conn);
		   System.out.println("回收1个连接");
		}
		else
			try {
				conn.close();
				System.out.println("关闭了1个连接");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}



	@Override
	public PrintWriter getLogWriter() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public void setLogWriter(PrintWriter out) throws SQLException {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void setLoginTimeout(int seconds) throws SQLException {
		// TODO Auto-generated method stub
		
	}



	@Override
	public int getLoginTimeout() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public Logger getParentLogger() throws SQLFeatureNotSupportedException {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public <T> T unwrap(Class<T> iface) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public boolean isWrapperFor(Class<?> iface) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}



	@Override
	public Connection getConnection(String username, String password)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}



	
}
