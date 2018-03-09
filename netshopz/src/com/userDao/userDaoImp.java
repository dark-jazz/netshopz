package com.userDao;

import java.util.List;

import com.jdbc.*;


public class userDaoImp implements userDao {

	public int addUser(Users users) {
		// TODO Auto-generated method stub
		String sql="insert into tb_users(userId,userName,password,tel) values(null,?,?,?)";
		Object[] params={users.getUserName(),users.getPassWord(),users.getTel()};
		try {
			return MysqlUtil.update(sql, params);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public int delUser(int id) {
		// TODO Auto-generated method stub
		String sql="delete from tb_users where userId=?";
		Object[] params={id};
		try {
			return MysqlUtil.update(sql, params);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public int updateUser(Users users) {
		// TODO Auto-generated method stub
		String sql="update tb_users set UserName=?,password=?,tel=?";
		Object[] params={users.getUserName(),users.getPassWord(),users.getTel()};
		try {
			return MysqlUtil.update(sql, params);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;

	}

	public Users query(int id) {   //閺屻儴顕楅崡鏇氶嚋閺勵垵鐨熼悽銊ュ礋娑擃亞娈戞径鍕倞閺傝纭�
		// TODO Auto-generated method stub
		String sql="select * from tb_users where  userId=?";
		Object[] params={id};
		try {
			return (Users) MysqlUtil.query(sql, params, new BeanHandler(Users.class));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public List queryAll() {  //閺屻儴顕楁径姘嚋鐠嬪啰鏁ら惃鍕煙濞夛拷
		// TODO Auto-generated method stub
		String sql="select * from tb_users";
		try {
			return (List) MysqlUtil.query(sql, null, new BeanListHandler(Users.class));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int login(String userName,String password) {
		// TODO Auto-generated method stub
		String sql="select * from tb_users where userName=? and passWord=?";
		Object[] params={userName,password};
		
		try {
			List list=(List) MysqlUtil.query(sql, params, new BeanListHandler(Users.class));
			if(list.size()>0){
			     return 1;
				  }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public Users query(String name) {
		// TODO Auto-generated method stub
		String sql="select * from tb_users where  userName=?";
		Object[] params={name};
		try {
			return (Users) MysqlUtil.query(sql, params, new BeanHandler(Users.class));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}



}
