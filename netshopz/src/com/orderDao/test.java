package com.orderDao;

import java.util.Iterator;
import java.util.List;

public class test {
  public static void main(String[] args) {
	  
	  OrderDaoImp odi=new OrderDaoImp();
	  List ls=odi.query(10001);
	  Iterator<Order> it=ls.iterator();
	  while(it.hasNext()){
		   Order one=it.next();
		   System.out.println(one.toString());
		  
	  }
	  
	  
}
}
