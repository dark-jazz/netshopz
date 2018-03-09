package com.goods;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import C3P0.C3P0Demo;

import com.backstagePage.Page;


public class DBUtilDaoImpToGood implements DBUtilDaoToGood {

	@Override
	public int addgood(Good good) {
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		String sql="insert into tb_goods value(null,?,?,?,?,?,?)";
	    Object[] params={good.getGoodsName(),good.getGoodsRest(),good.getGoodsPrice(),good.getGoodsImage(),good.getDescript(),good.getSortId()};	
		try {	
			int l=qr.update(sql,params);
			
			return l;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return 0;
	}

	@Override
	public int delgood(int id) {
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		String sql="delete from tb_goods where goodsId="+id;
		try {	
			int l=qr.update(sql);
			return l;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	
		
		return 0;
	}

	@Override
	public int updategood(Good good) {
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		
		String sql="update tb_goods set goodsName=?,goodsRest=?,goodsPrice=?,goodsImage=?,descript=?,sortId=? where goodsId="+good.getGoodsId();
		Object[] params={good.getGoodsName(),good.getGoodsRest(),good.getGoodsPrice(),good.getGoodsImage(),good.getDescript(),good.getSortId()};
		try {
			int i=qr.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}

	@Override
	public Good query(int id) {
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		String sql="select * from tb_goods where goodsId="+id;
		try {
			Good good=qr.query(sql,new BeanHandler(Good.class));
			System.out.println(good.toString());
			return good;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List queryAll() {
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		String sql="select * from tb_goods";
		try {	
			List<Good> l=qr.query(sql,new BeanListHandler(Good.class));
			return l;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return null;
	}

	public List queryAllByPage(Page pa) {
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		try {	
			String sql2="select * from tb_goods limit"+" "+(pa.getPageNo()-1)*pa.getPageSize()+","+pa.getPageSize();
		    List<Good> l2=qr.query(sql2,new BeanListHandler(Good.class));
		   return l2;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return null;
	}

	@Override  /*实现全名搜索*/
	public Good queryone(String name) {   //模糊搜索有可能搜索到多个，适配搜索id时直接显示商品详情页，如果搜索商品名则显示列表;而且会有多个关键词的情况存在
		// TODO Auto-generated method stub
		QueryRunner qr=new QueryRunner(C3P0Demo.getDataSource());
		String sql="select * from tb_goods where goodsName like '%"+name+"%'";
		try {
			Good good=qr.query(sql,new BeanHandler(Good.class));
			System.out.println(good.toString());
			return good;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Good query(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	

}
