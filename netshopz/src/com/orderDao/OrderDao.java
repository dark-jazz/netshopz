package com.orderDao;

import java.util.List;
public interface OrderDao {
	public int addOrder(Order order);
	public int delOrder(int id);
	public int updateOrder(Order order);
	public List query(int id);
	public List queryAll();	
}
