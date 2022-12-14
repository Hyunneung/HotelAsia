package com.hotel.asia.mybatis.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.hotel.asia.dto.Member;

@Mapper
public interface MemberMapper {
	
	//존재하는 아이디인지 확인 
	public Member isId(String id);
	
	//아이디 찾기 
	public String findId(String name, String email);
	
	//비밀번호 찾기
	public Member searchPw(String name, String id, String email);

	public int updatePw(Member m);
	
	//회원가입(join)
	public int insert(Member m);

	//수정 
	public int update(Member m) ;
	
	//삭제 
	public void delete(String id);

	//회원정보 수정 + 검색 
	public int getSearchListCount(Map<String, String> map) ;

	public List<Member> getSearchList(Map<String, Object> map) ;
	
	
	// ==========[현능] 22-10-05 수정==========
	// 휴대폰 번호 중복 검사 
	public Member phoneCheck(int phone);
	// 포인트 적립
	public int rewardPoint(HashMap<String, Object> map);
	
	// ==========[현능] 22-10-19 추가==========
	// 포인트 사용
	public int usePoint(HashMap<String, Object> map);

	public int getListCount();

	public List<Member> getUserList(HashMap<String, Object> map);

	public int UserDelete(String id);
	
	public int RezCheck(String id);

	

}
