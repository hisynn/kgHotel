package com.hotel.kg.notice.dto;

public class NoticeDTO {

	String notice_no; //공지번호
	String mngr_id; // 관리자 아이디
	String notice_sj; // 제목
	String notice_cn; // 공지내용
	String rgsde; // 등록일자
	int rdcnt; // 조회수
	String delete_at; // 글 삭제여부
	int count;
	
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(String notice_no) {
		this.notice_no = notice_no;
	}
	public String getMngr_id() {
		return mngr_id;
	}
	public void setMngr_id(String mngr_id) {
		this.mngr_id = mngr_id;
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
	public String getRgsde() {
		return rgsde;
	}
	public void setRgsde(String rgsde) {
		this.rgsde = rgsde;
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

