package com.hotel.kg.member.dto;


public class MemberDTO {
	
	String mbr_email;		//OK
	String mbr_name;		//OK
	String mbr_pw;			//OK
	String mbr_brthdy;		//OK
	
//	전화번호
	String mbr_tel;			//OK
	String mbr_tel1;			//OK
	String mbr_tel2;			//OK
	String mbr_tel3;			//OK
// 주소
	String mbr_adres;		//NULLABLE
//	String mbr_postcode1;
//	String mbr_postcode2;
	String mbr_zonecode;
	String mbr_address;
	String mbr_address_etc;	
// 주소종료
	
	String mbr_grad;			//서비스입력
	String mbr_nlty;			//OK
	String mbr_sexdstn;	//OK
	String act_at;				//서비스입력
	String srbde; 				//서비스입력
	int mbr_point;		//서비스입력
// ETC INFORMATION
	String password;

	
	
	
	public String getMbr_tel() {
		return mbr_tel1+mbr_tel2+mbr_tel3;
	}
	public void setMbr_tel(String mbr_tel1, String mbr_tel2, String mbr_tel3) {
		this.mbr_tel = mbr_tel1+mbr_tel2+mbr_tel3;
	}
	//전화번호/////////////////////////////////////////
	public String getMbr_tel1() {
		return mbr_tel1;
	}
	public void setMbr_tel1(String mbr_tel1) {
		this.mbr_tel1 = mbr_tel1;
	}
	public String getMbr_tel2() {
		return mbr_tel2;
	}
	public void setMbr_tel2(String mbr_tel2) {
		this.mbr_tel2 = mbr_tel2;
	}
	public String getMbr_tel3() {
		return mbr_tel3;
	}
	public void setMbr_tel3(String mbr_tel3) {
		this.mbr_tel3 = mbr_tel3;
	}
	//주소/////////////////////////////////////////////
//	public String getMbr_postcode1() {
//		return mbr_postcode1;
//	}
//	public void setMbr_postcode1(String mbr_postcode1) {
//		this.mbr_postcode1 = mbr_postcode1;
//	}
//	public String getMbr_postcode2() {
//		return mbr_postcode2;
//	}
//	public void setMbr_postcode2(String mbr_postcode2) {
//		this.mbr_postcode2 = mbr_postcode2;
//	}
	public String getMbr_zonecode() {
		return mbr_zonecode;
	}
	public void setMbr_zonecode(String mbr_zonecode) {
		this.mbr_zonecode = mbr_zonecode;
	}
	public String getMbr_address() {
		return mbr_address;
	}
	public void setMbr_address(String mbr_address) {
		this.mbr_address = mbr_address;
	}
	public String getMbr_address_etc() {
		return mbr_address_etc;
	}
	public void setMbr_address_etc(String mbr_address_etc) {
		this.mbr_address_etc = mbr_address_etc;
	}	
	public String getMbr_adres() {
		return mbr_zonecode+" | "+mbr_address+" "+mbr_address_etc;
	}
	public void setMbr_adres(String mbr_postcode1, String mbr_postcode2, String mbr_zonecode, String mbr_address, String mbr_address_etc) {
		this.mbr_adres = mbr_zonecode+" | "+mbr_address+" "+mbr_address_etc;
	}
	public String getMbr_email() {
		return mbr_email;
	}
	public void setMbr_email(String mbr_email) {
		this.mbr_email = mbr_email;
	}
	public String getMbr_name() {
		return mbr_name;
	}
	public void setMbr_name(String mbr_name) {
		this.mbr_name = mbr_name;
	}
	public String getMbr_pw() {
		return mbr_pw;
	}
	public void setMbr_pw(String mbr_pw) {
		this.mbr_pw = mbr_pw;
	}
	public String getMbr_brthdy() {
		return mbr_brthdy;
	}
	public void setMbr_brthdy(String mbr_brthdy) {
		this.mbr_brthdy = mbr_brthdy;
	}
	public String getMbr_grad() {
		return mbr_grad;
	}
	public void setMbr_grad(String mbr_grad) {
		this.mbr_grad = mbr_grad;
	}
	public String getMbr_nlty() {
		return mbr_nlty;
	}
	public void setMbr_nlty(String mbr_nlty) {
		this.mbr_nlty = mbr_nlty;
	}
		
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMbr_sexdstn() {
		return mbr_sexdstn;
	}
	public void setMbr_sexdstnr(String mbr_sexdstn) {
		this.mbr_sexdstn = mbr_sexdstn;
	}
	public String getAct_at() {
		return act_at;
	}
	public void setAct_at(String act_at) {
		this.act_at = act_at;
	}
	public String getSrbde() {
		return srbde;
	}
	public void setSrbde(String srbde) {
		this.srbde = srbde;
	}
	public int getMbr_point() {
		return mbr_point;
	}
	public void setMbr_point(int mbr_point) {
		this.mbr_point = mbr_point;
	}
	@Override
	public String toString() {
		return "MemberDTO [mbr_email=" + mbr_email + ", mbr_name=" + mbr_name + ", mbr_pw=" + mbr_pw + ", mbr_brthdy="
				+ mbr_brthdy + ", mbr_tel=" + mbr_tel + ", mbr_adres=" + mbr_adres + ", mbr_grad=" + mbr_grad
				+ ", mbr_nlty=" + mbr_nlty + ", mbr_sexdstnr=" + mbr_sexdstn + ", act_at=" + act_at + ", srbde="
				+ srbde + ", mbr_point=" + mbr_point + "]";
	}

	

	
	
	
}