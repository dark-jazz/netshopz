package com.orderDao;

import java.util.List;

import com.jdbc.BeanHandler;
import com.jdbc.BeanListHandler;
import com.jdbc.MysqlUtil;
import com.userDao.Users;

public class OrderDaoImp implements OrderDao {

	@Override
	public int addOrder(Order order) {
		// TODO Auto-generated method stub
		/*String sql="insert into tb_orderform(userId,userName,password,tel) values(null,?,?,?)";
		Object[] params={users.getUserName(),users.getPassWord(),users.getTel()};
		try {
			return MysqlUtil.update(sql, params);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		return 0;
	}

	@Override
	public int delOrder(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateOrder(Order order) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List query(int id) {
		// TODO Auto-generated method stub
		String sql="select * from tb_orderform where  userId=?";
		Object[] params={id};
		try {
			return (List) MysqlUtil.query(sql, params, new BeanListHandler(Order.class));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List queryAll() {
		// TODO Auto-generated method stub
		String sql="select * from tb_orderform";
		try {
			return (List) MysqlUtil.query(sql, null, new BeanListHandler(Order.class));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
