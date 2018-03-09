package com.userDao;

import java.util.List;

import com.userDao.Users;

public interface userDao {
	public int addUser(Users users);
	public int delUser(int id);
	public int updateUser(Users users);
	public Users query(int id);
	public List queryAll();	
	public int login(String userName,String password);
	public Users query(String name);
}
