package com.hotel.kg.resvelist.dto;

import java.util.ArrayList;

public class ShowResveDto {
	String mbr_email;			//	-- 회원 이메일 : email 형식	
	String resve_date;			//	-- 예약 날짜
	String chkin;				//	-- 체크인
	String chckt;				//	-- 체크 아웃
	String requst_matter;		//	-- 요청 사항	
	int resve_totamt;			//	-- 예약총액
	String goods_name;
	String goods_cn;
	
	ArrayList<ResveOptnDto> resveOptnDto;
	
	public ArrayList<ResveOptnDto> getResveOptnDto() {
		return resveOptnDto;
	}
	public void setResveOptnDto(ArrayList<ResveOptnDto> resveOptnDto) {
		this.resveOptnDto = resveOptnDto;
	}
	public String getMbr_email() {
		return mbr_email;
	}
	public void setMbr_email(String mbr_email) {
		this.mbr_email = mbr_email;
	}
	public String getResve_date() {
		return resve_date;
	}
	public void setResve_date(String resve_date) {
		this.resve_date = resve_date;
	}
	public String getChkin() {
		return chkin;
	}
	public void setChkin(String chkin) {
		this.chkin = chkin;
	}
	public String getChckt() {
		return chckt;
	}
	public void setChckt(String chckt) {
		this.chckt = chckt;
	}
	public String getRequst_matter() {
		return requst_matter;
	}
	public void setRequst_matter(String requst_matter) {
		this.requst_matter = requst_matter;
	}
	public int getResve_totamt() {
		return resve_totamt;
	}
	public void setResve_totamt(int resve_totamt) {
		this.resve_totamt = resve_totamt;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGoods_cn() {
		return goods_cn;
	}
	public void setGoods_cn(String goods_cn) {
		this.goods_cn = goods_cn;
	}
	
}
