package com.goods;

public class Good {
    private int goodsId;
	private String goodsName;
	private int goodsRest;
	private double goodsPrice;
	private String goodsImage;
	private String descript;
	private String sortId;
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
	public int getGoodsRest() {
		return goodsRest;
	}
	public void setGoodsRest(int goodsRest) {
		this.goodsRest = goodsRest;
	}
	public double getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsImage() {
		return goodsImage;
	}
	public void setGoodsImage(String goodsImage) {
		this.goodsImage = goodsImage;
	}
	public String getDescript() {
		return descript;
	}
	public void setDescript(String descript) {
		this.descript = descript;
	}
	public String getSortId() {
		return sortId;
	}
	public void setSortId(String sortId) {
		this.sortId = sortId;
	}
	@Override
	public String toString() {
		return "good [goodsId=" + goodsId + ", goodsName=" + goodsName
				+ ", goodsRest=" + goodsRest + ", goodsPrice=" + goodsPrice
				+ ", goodsImage=" + goodsImage + ", descript=" + descript
				+ ", sortId=" + sortId + "]";
	}
	public Good(int goodsId, String goodsName, int goodsRest,
			double goodsPrice, String goodsImage, String descript, String sortId) {
		super();
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsRest = goodsRest;
		this.goodsPrice = goodsPrice;
		this.goodsImage = goodsImage;
		this.descript = descript;
		this.sortId = sortId;
	}
	public Good() {
		super();
	}
	
	
	
	
	
}
