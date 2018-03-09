package com.orderDao;

public class Order {
     private int userId;
     private int orderId;
     private int goodsId;
     private String goodsName;
     private int goodsSum;
     private String tel;
     private String address;
     private String sum;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getGoodsSum() {
		return goodsSum;
	}
	public void setGoodsSum(int goodsSum) {
		this.goodsSum = goodsSum;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSum() {
		return sum;
	}
	public void setSum(String sum) {
		this.sum = sum;
	}
	public Order(int userId, int orderId, int goodsId, String goodsName,
			int goodsSum, String tel, String address, String sum) {
		super();
		this.userId = userId;
		this.orderId = orderId;
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsSum = goodsSum;
		this.tel = tel;
		this.address = address;
		this.sum = sum;
	}
	public Order() {
		super();
	}
	@Override
	public String toString() {
		return "Order [userId=" + userId + ", orderId=" + orderId
				+ ", goodsId=" + goodsId + ", goodsName=" + goodsName
				+ ", goodsSum=" + goodsSum + ", tel=" + tel + ", address="
				+ address + ", sum=" + sum + "]";
	}

	
     
     
	
	
}
