package com.goods;

import java.util.List;

public class test {
  public static void main(String[] args) {
	DBUtilDaoToGood one=new DBUtilDaoImpToGood();
	 List list=one.queryAll();
	 System.out.println(list);
	  
}
}
