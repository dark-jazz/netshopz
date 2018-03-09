package com.backstage;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import C3P0.C3P0Demo;

import com.backstagePage.Page;
import com.userDao.Users;

public class DBUtilDaoImpToUser implements DBUtilDaoToUser {

	@Override
	public int addUser(Users users) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delUser(int id) {
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		String sql="delete from tb_users where userId="+id;
		try {	
			int l=qr.update(sql);
			return l;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	
		
		return 0;
	}

	@Override
	public int updateUser(Users users) {
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		String sql="update tb_users set UserName=?,password=?,tel=? where userId="+users.getUserId();
		Object[] params={users.getUserName(),users.getPassWord(),users.getTel()};
		try {
			int i=qr.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}

	@Override
	public Users query(int id) {
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		String sql="select * from tb_users where userId="+id;
		try {
			Users user=qr.query(sql,new BeanHandler(Users.class));
			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List queryAll() {
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		String sql="select * from tb_users";
		try {	
			List<Users> l=qr.query(sql,new BeanListHandler(Users.class));
			return l;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return null;
	}

	public List queryAllByPage(Page pa) {
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		try {	
			String sql2="select * from tb_users limit"+" "+(pa.getPageNo()-1)*pa.getPageSize()+","+pa.getPageSize();
		    List<Users> l2=qr.query(sql2,new BeanListHandler(Users.class));
		   return l2;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return null;
	}
	
	@Override
	public int login(String userName, String password) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Users query(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
