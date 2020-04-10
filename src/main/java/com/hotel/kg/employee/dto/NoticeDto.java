package com.hotel.kg.employee.dto;

public class NoticeDto {
	
	private String mngr_id;
	private String rgsde;
	private String notice_sj;
	private String notice_cn;
	private int rdcnt;
	private String delete_at;
	
	public String getMngr_id() {
		return mngr_id;
	}
	public void setMngr_id(String mngr_id) {
		this.mngr_id = mngr_id;
	}
	public String getRgsde() {
		return rgsde;
	}
	public void setRgsde(String rgsde) {
		this.rgsde = rgsde;
	}
	public String getNotice_sj() {
		return notice_sj;
	}
	public void setNotice_sj(String notice_sj) {
		this.notice_sj = notice_sj;
	}
	public String getNotice_cn() {
		return notice_cn;
	}
	public void setNotice_cn(String notice_cn) {
		this.notice_cn = notice_cn;
	}
	public int getRdcnt() {
		return rdcnt;
	}
	public void setRdcnt(int rdcnt) {
		this.rdcnt = rdcnt;
	}
	public String getDelete_at() {
		return delete_at;
	}
	public void setDelete_at(String delete_at) {
		this.delete_at = delete_at;
	}
	
	

}
