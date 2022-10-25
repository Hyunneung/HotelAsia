package com.hotel.asia.mybatis.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.hotel.asia.dto.Payment;

@Mapper
public interface PaymentMapper {
	
	// 결제
	public int payment(Payment pm);

}
