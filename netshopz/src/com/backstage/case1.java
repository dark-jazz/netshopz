package com.backstage;

import static org.junit.Assert.*;

import java.util.Iterator;
import java.util.List;
import com.userDao.Users;

import org.junit.Test;

public class case1 {

	@Test
	public void test() throws Exception {
		DBUtilDaoToUser dbu=new DBUtilDaoImpToUser();
		List<Users> l=dbu.queryAll();
		System.out.println(l.size());
		System.out.println(l);
		for(Users u:l)
		{
			System.out.println("22");
		}
	  
	}

}
