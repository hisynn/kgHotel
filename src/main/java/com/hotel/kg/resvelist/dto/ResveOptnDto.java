package com.hotel.kg.resvelist.dto;

public class ResveOptnDto {
	String optn_name;	//옵션 이름
	int optn_qy;	 	//옵션 갯수
	int optn_totamt;	//옵션별 총 가격
	
	public String getOptn_name() {
		return optn_name;
	}
	public void setOptn_name(String optn_name) {
		this.optn_name = optn_name;
	}
	public int getOptn_qy() {
		return optn_qy;
	}
	public void setOptn_qy(int optn_qy) {
		this.optn_qy = optn_qy;
	}
	public int getOptn_totamt() {
		return optn_totamt;
	}
	public void setOptn_totamt(int optn_totamt) {
		this.optn_totamt = optn_totamt;
	}
}
