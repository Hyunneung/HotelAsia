package com.hotel.asia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.asia.dto.Rez;
import com.hotel.asia.mybatis.mapper.RezMapper;

@Service
public class RezServiceImpl  implements RezService{
	@Autowired
	private RezMapper mapper;
	 
	// 객실 예약
	@Override
	public int reservation(Rez rez) {
		return mapper.reservation(rez);
	}
	
}
