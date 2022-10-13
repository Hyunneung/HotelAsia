package com.hotel.asia.mybatis.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.hotel.asia.dto.Rez;

@Mapper
public interface RezMapper {
	// 객실 예약
	public int reservation(Rez rez);
	
	// 객실 예약 취소 (DB 삭제)
	public int deleteRez(int REZ_ID);
}
