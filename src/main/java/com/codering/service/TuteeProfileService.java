package com.codering.service;

import java.util.List;
import java.util.Map;

public interface TuteeProfileService
{
	public Map<String, Object> selectTuteeProfile(Map<String, Object> map);

	public List<Map<String, Object>> selectTuteeInterest(Map<String, Object> map);

	public List<Map<String, Object>> selectTuteewrittenComm(Map<String, Object> map);

	public List<Map<String, Object>> selectTuteewrittenCom(Map<String, Object> map);

	public List<Map<String, Object>> selectTuteeqtReply(Map<String, Object> map);

	public List<Map<String, Object>> selectTuteetutoringReply(Map<String, Object> map);

	public Map<String, Object> selectTuteetuteeingDetail(Map<String, Object> map);

	public List<Map<String, Object>> selectTuteetutoringfaq(Map<String, Object> map);

	public Map<String, Object> selectTuteerefund(Map<String, Object> map);

	public Map<String, Object> selectTuteeAfterTutoringDetail(Map<String, Object> map);

	public Map<String, Object> selectTuteenicknamecoupon(Map<String, Object> map);

	// 이전 튜터링 상세페이지
	public Map<String, Object> selectTuteeBeforeTutoringDetail(Map<String, Object> map);
	
	// 예약 튜터링 상세페이지
	public Map<String, Object> selectTuteeReservationTutoringDetail(Map<String, Object> map);
	
	public Map<String,Object> selectTuteeTutoringDetail(Map<String, Object> map);
	
	public Map<String,Object> TutoringDetail_review(Map<String, Object> map);


}
