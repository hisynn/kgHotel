package com.hotel.kg.employee.dto;

public class SellingDto {
	
	private String chckt;
	private String goods_name;
	private String rumty_name;
	private int totamt;
	private int qy;
	
	
	public int getTotamt() {
		return totamt;
	}
	public void setTotamt(int totamt) {
		this.totamt = totamt;
	}
	public int getQy() {
		return qy;
	}
	public void setQy(int qy) {
		this.qy = qy;
	}
	public String getChckt() {
		return chckt;
	}
	public void setChckt(String chckt) {
		this.chckt = chckt;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getRumty_name() {
		return rumty_name;
	}
	public void setRumty_name(String rumty_name) {
		this.rumty_name = rumty_name;
	}
	
	
	

}
