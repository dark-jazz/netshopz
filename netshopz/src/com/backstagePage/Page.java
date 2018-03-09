package com.backstagePage;

public class Page {
    private int sum;
	private int pageSize=20;
	private int pageNo=1;
	
	
	
	public int getSum() {
		this.sum=sum;
	return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	
	
	public int getPageCount(){
		if(this.getSum()%this.getPageSize()==0){
			 return this.getSum()/this.getPageSize();
		}
		 else{
			 return this.getSum()/this.getPageSize()+1;
		}
		
	}
	public Page(int sum, int pageSize, int pageNo) {
		super();
		this.sum = sum;
		this.pageSize = pageSize;
		this.pageNo = pageNo;
	}
	public Page(int sum) {
		super();
		this.sum = sum;
	}
	
	
}
