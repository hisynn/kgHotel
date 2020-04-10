package com.hotel.kg.employee.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.kg.employee.dao.GoodsDao;
import com.hotel.kg.employee.dao.IMngGoodsDao;
import com.hotel.kg.employee.dao.IRumtyDao;
import com.hotel.kg.employee.dao.ResveOptnDao;
import com.hotel.kg.employee.dto.GoodsDto;
import com.hotel.kg.employee.dto.GoodsTyDto;
import com.hotel.kg.employee.dto.ResveOptnDto;
import com.hotel.kg.employee.dto.RumtyDto;


@Service
public class MngGoodsSvcImpl implements IMngGoodsSvc{

	@Autowired
	IRumtyDao rumtyDao;
	@Autowired
	GoodsDao goodsDao;
	@Autowired
	ResveOptnDao resveOptnDao;
	@Autowired
	IMngGoodsDao dao;
	
	@Override
	public void insertRumty(RumtyDto dto) throws Exception{
		
		RumtyDto dto2 = rumtyDao.sltOne(dto.getRumty_no());

		if(dto2 == null) {
			rumtyDao.insert(dto);
		} else {
			throw new Exception("객실번호 중복");
		}
		
	}

	@Override
	public void insertGoods(GoodsDto dto) throws Exception{
		
		GoodsDto dto2 = goodsDao.sltOne(dto.getGoods_no());
		
		if(dto2 == null) {
			goodsDao.insert(dto);
		} else {
			throw new Exception("패키지번호 중복");
		}
		
	}

	@Override
	public void insertOption(ResveOptnDto dto) throws Exception{
		
		ResveOptnDto dto2 = resveOptnDao.sltOne(dto.getOptn_no());
		
		if(dto2 == null) {
			resveOptnDao.insert(dto);
		} else {
			throw new Exception("옵션번호 중복");
		}
	}

	@Override
	public String getRumtyNo() {
		String rumtyNo = String.valueOf(dao.getMaxRumtyCnt()+1);
		
		return rumtyNo;
	}

	@Override
	public String getOptionNo() {
		String optionNo = String.valueOf(dao.getMaxOptionCnt()+1);
		
		return optionNo;
	}

	@Override
	public String getGoodsNo() {
		String packageNo = String.valueOf(dao.getMaxGoodsCnt()+1);
		
		return packageNo;
	}

	@Override
	public ArrayList<RumtyDto> selectRumtyList() {
		ArrayList<RumtyDto> list = dao.selectRumtyList();
		
		return list;
	}

	@Override
	public ArrayList<GoodsDto> selectGoodsList() {
		ArrayList<GoodsDto> list = dao.selectGoodsList();
		
		return list;
	}

	@Override
	public ArrayList<ResveOptnDto> selectOptionList() {
		ArrayList<ResveOptnDto> list = dao.selectOptionList();
		
		return list;
	}

	@Override
	public RumtyDto selectOneRumty(String rumty_no) {
		RumtyDto dto = rumtyDao.sltOne(rumty_no);
		
		return dto;
	}

	@Override
	public GoodsDto selectOneGoods(String goods_no) {
		GoodsDto dto = goodsDao.sltOne(goods_no);
		
		return dto;
	}

	@Override
	public ResveOptnDto selectOneOption(String option_no) {
		ResveOptnDto dto = resveOptnDao.sltOne(option_no);
		
		return dto;
	}

	@Override
	public void updateRumty(RumtyDto dto) throws Exception {
		RumtyDto dto2 = rumtyDao.sltOne(dto.getRumty_no());
		
		if(dto2 != null) {
			rumtyDao.update(dto);
		} else {
			throw new Exception("객실 정보가 없습니다.");
		}
		
	}

	@Override
	public void updateGoods(GoodsDto dto) throws Exception {
		GoodsDto dto2 = goodsDao.sltOne(dto.getGoods_no());
		
		if(dto2 != null) {
			goodsDao.update(dto);
		} else {
			throw new Exception("패키지 정보가 없습니다.");
		}
		
	}

	@Override
	public void updateOption(ResveOptnDto dto) throws Exception {
		ResveOptnDto dto2 = resveOptnDao.sltOne(dto.getOptn_no());
		
		if(dto2 != null) {
			resveOptnDao.update(dto);
		} else {
			throw new Exception("옵션 정보가 없습니다.");
		}
		
	}

	@Override
	public ArrayList<GoodsTyDto> selectGoods_TyList() {
		ArrayList<GoodsTyDto> list = dao.selectGoods_TyList();
		
		return list;
	}
	

}
