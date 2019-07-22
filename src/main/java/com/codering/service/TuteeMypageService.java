package com.codering.service;

import java.util.List;
import java.util.Map;

public interface TuteeMypageService
{
	// 진행중 튜터링 리스트
	public List<Map<String, Object>> selectIngList(Map<String, Object> map);

	// 이전 튜터링 리스트
	public List<Map<String, Object>> selectBeforeList(Map<String, Object> map);

	// 예정 튜터링 리스트
	public List<Map<String, Object>> selectAftereList(Map<String, Object> map);

	// 일정정보
	public Map<String, Object> selectschedule(Map<String, Object> map);

	// 자신의 후기 프린트
	public Map<String, Object> selectmyReview(Map<String, Object> map);

	// 후기 입력
	public void insertReview(Map<String, Object> map);

	// 예약튜터링 리스트
	public List<Map<String, Object>> selectreserveList(Map<String, Object> map);

	// 예약튜터링 예약취소
	public void deleteReserve(Map<String, Object> map);
	
	// 튜티 중도포기
	public void inserttuteedrop(Map<String, Object> map);
	
	//찜한 튜터링 리스트
	public List<Map<String, Object>> selectpickList(Map<String, Object> map);
	
}
