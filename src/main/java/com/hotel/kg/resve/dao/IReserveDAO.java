package com.hotel.kg.resve.dao;

import java.util.List;

import com.hotel.kg.resve.dto.GoodsDTO;
import com.hotel.kg.resve.dto.OptnDTO;
import com.hotel.kg.resve.dto.ReserveFinal;
import com.hotel.kg.resve.dto.ReserveRoomDTO;

public interface IReserveDAO {
	
	public List<ReserveRoomDTO> sltRoom(ReserveRoomDTO reserveDTO);
	
	public int sltCount(ReserveRoomDTO dto) ;
	
//	public List<ReserveRoomDTO> sltSingle(int Nmpr_lmtt);
	
//	public List<ReserveRoomDTO> sltTwin(int Nmpr_lmtt);
	
	public List<ReserveRoomDTO> sltAll(int Nmpr_lmtt);

	public List<GoodsDTO> sltGoodsMember();
	
	public List<GoodsDTO> sltGoodsPackage();
	
	public int sltGoodsCount() ;
	
	public int sltGoodsPackageCount() ;
	
	public GoodsDTO sltOneGoods(GoodsDTO goodsDTO) ;
	
	public int reserveInsert(ReserveFinal resultFinalDTO);
	
	public int insertOptn(OptnDTO optnDTO);

}
