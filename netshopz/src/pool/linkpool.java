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
	
	static{                       //��ʼ�����ӳأ����ӳر���һ�����������ӷ������
		for(int i=0;i<init;i++)
		{
			pool.addLast(jdbcDemo.getCon());
			count++;
		}
		System.out.println("initailize pool");
		}
	
	
	
	
	public Connection getConnection(){    //�����ӳ���ȡconnectionģ������Ľṹ 
		if(pool.size()<=0&&count<max)
		{
			for(int i=0;i<min;i++)
			{
				pool.addLast(jdbcDemo.getCon());   //�����ĩβ
				count++;
			}
			System.out.println("�����3������");
		}
		System.out.println("����1������");
		return (Connection) pool.removeFirst();	 //���ͷ��������
		
	}
	
	
	
	public void recall(Connection conn)
	{
		if(pool.size()<max)  //�����ӳ������ӳ������ֵʱ���ſ�ʼ����
		{
		   pool.addLast(conn);
		   System.out.println("����1������");
		}
		else
			try {
				conn.close();
				System.out.println("�ر���1������");
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
