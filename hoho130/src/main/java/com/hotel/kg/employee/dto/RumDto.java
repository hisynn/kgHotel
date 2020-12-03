package com.hotel.kg.employee.dto;

public class RumDto {
	
	private String rum_no;
	private String rumty_no;
	private String chkin_at;
	private String chkin_posbl_at;
	
	public String getRum_no() {
		return rum_no;
	}
	public void setRum_no(String rum_no) {
		this.rum_no = rum_no;
	}
	public String getRumty_no() {
		return rumty_no;
	}
	public void setRumty_no(String rumty_no) {
		this.rumty_no = rumty_no;
	}
	public String getChkin_at() {
		return chkin_at;
	}
	public void setChkin_at(String chkin_at) {
		this.chkin_at = chkin_at;
	}
	public String getChkin_posbl_at() {
		return chkin_posbl_at;
	}
	public void setChkin_posbl_at(String chkin_posbl_at) {
		this.chkin_posbl_at = chkin_posbl_at;
	}
	
	@Override
	public String toString() {
		return "RumDto [rum_no=" + rum_no + ", rumty_no=" + rumty_no + ", chkin_at=" + chkin_at + ", chkin_posbl_at="
				+ chkin_posbl_at + "]";
	}
	
	
	
	
}
