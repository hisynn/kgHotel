package com.hotel.kg.member.dao;

import java.util.List;

import com.hotel.kg.member.dto.MemberDTO;

public interface IMemberDAO {
	
	public List<MemberDTO> selectAll();
	
	public MemberDTO selectOne(String email);
	
	public int insert(MemberDTO Dto);
	
	public void update(MemberDTO dto);
	
	public int delete();
	
	public int PWupdate(MemberDTO dto);
	
	public String searchID(MemberDTO dto);
	
	public MemberDTO searchPw(MemberDTO dto);

}
