package com.hotel.kg.resve.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.hotel.kg.member.dto.MemberDTO;
import com.hotel.kg.resve.dto.OptnDTO;
import com.hotel.kg.resve.dto.ReserveFinal;
import com.hotel.kg.resve.dto.ReserveRoomDTO;

public interface IReserveService {
	
	public String sSltRoom(Model model, ReserveRoomDTO reserveDTO);
	
	public String sreserveOption(Model model, ReserveRoomDTO reserveDTO);
	
	public String sreserveOption2(Model model, ReserveRoomDTO reserveDTO);

	public String reserveFinal(Model model, ReserveRoomDTO reserveDTO, MemberDTO dto, HttpSession session, ReserveFinal resultFinalDTO, OptnDTO optnDTO);
}
