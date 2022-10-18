package com.hotel.asia.service;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.hotel.asia.dto.CouponMemberVO;
import com.hotel.asia.dto.CouponVO;

@SpringBootTest
public class CouponServiceTDD {
	private static final Logger log = LoggerFactory.getLogger(CouponServiceTDD.class);
	
	@Autowired
	private CouponService service;
	
	@Test
	public void getCouponMember() {
		List<CouponMemberVO> data = service.getCouponMember("user01");
		
		for (CouponMemberVO couponMemberVO : data) {
			log.info("" + couponMemberVO.getCOUPON_NUMBER());
			log.info("" + couponMemberVO.getCOUPON_TYPE_NUMBER());
			log.info("" + couponMemberVO.getMEM_ID());
			log.info("" + couponMemberVO.getCOUPON_GET_DATE());
			log.info("" + couponMemberVO.getCOUPON_END_DATE());
		}
	}
	
	@Test
	public void getCouponMemberCount() {
		int data = service.getCouponMemberCount("user01");
		log.info("user01의 쿠폰 개수 : " + data);
	}
	
	@Test
	public void getCoupon() {
		List<CouponMemberVO> data = service.getCouponMember("user01");
		CouponVO vo=service.getCoupon(data.get(0).getCOUPON_TYPE_NUMBER());
		log.info(""+vo.getCOUPON_TYPE_NUMBER());
		log.info(""+vo.getCOUPON_NAME());
		log.info(""+vo.getCOUPON_PRICE());
		log.info(""+vo.getCOUPON_COMMENT());
	}
	

	@Test
	public void delCouponMember() {
		List<CouponMemberVO> data = service.getCouponMember("user01");
		int result = service.useCouponMember(data.get(0).getCOUPON_NUMBER());
		log.info("삭제된 컬럼 수 : " + result);
	}
}
