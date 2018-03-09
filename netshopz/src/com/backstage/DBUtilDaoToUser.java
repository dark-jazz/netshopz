package com.backstage;

import java.util.List;

import com.backstagePage.Page;
import com.orderDao.Order;
import com.userDao.Users;

public interface DBUtilDaoToUser {
	public int addUser(Users users);
	public int delUser(int id);
	public int updateUser(Users users);
	public Users query(int id);
	public List queryAll();	
	public int login(String userName,String password);
	public Users query(String name);
	public List queryAllByPage(Page pa); 
}
