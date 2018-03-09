package com.userDao;

public class test {
public static void main(String[] args) {
	userDao userDao=new userDaoImp();
	
	System.out.println(userDao.login("nike", "123456"));
	
}
}
