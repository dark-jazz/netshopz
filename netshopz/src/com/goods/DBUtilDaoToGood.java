package com.goods;

import java.util.List;

import com.backstagePage.Page;
import com.orderDao.Order;
import com.userDao.Users;

public interface DBUtilDaoToGood {
	public int addgood(Good good);
	public int delgood(int id);
	public int updategood(Good good);
	public Good query(int id);
	public List queryAll();	
	//public int login(String userName,String password);
	public Good query(String name);
	@SuppressWarnings("rawtypes")
	public List queryAllByPage(Page pa);
	Good queryone(String name); 
}
