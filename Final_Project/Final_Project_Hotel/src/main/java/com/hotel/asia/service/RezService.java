package com.hotel.asia.service;

import java.util.List;

import com.hotel.asia.dto.Rez;

public interface RezService {
	// 객실 예약
	public int reservation(Rez rez);
	// 객실 예약 취소 (DB 삭제)
	public int deleteRez(int REZ_ID);
	
	
	// 객실 예약 리스트
	public List<Rez> getRezList();
	
	// 특정 객실 예약 날짜 리스트
	public List<Rez> getRezRoomDate(int num);

}
