package com.codering.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.codering.common.AbstractDAO;

@Repository("TuteeProfileDAO")
public class TuteeProfileDAO extends AbstractDAO
{

	@SuppressWarnings("unchecked")
	public Map<String, Object> TutoringDetail_review(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("TuteeProfile.TutoringDetail_review", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectTuteeProfile(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("TuteeProfile.info", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTuteeInterest(Map<String, Object> map)
	{
		return (List<Map<String, Object>>) selectList("TuteeProfile.interest", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTuteewrittenComm(Map<String, Object> map)
	{
		return (List<Map<String, Object>>) selectList("TuteeProfile.writtenComm", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTuteewrittenCom(Map<String, Object> map)
	{
		return (List<Map<String, Object>>) selectList("TuteeProfile.writtenCom", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTuteeqtReply(Map<String, Object> map)
	{
		return (List<Map<String, Object>>) selectList("TuteeProfile.qtReply", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTuteetutoringReply(Map<String, Object> map)
	{
		return (List<Map<String, Object>>) selectList("TuteeProfile.tutoringReply", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectTuteetuteeingDetail(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("TuteeProfile.tuteeingDetail", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTuteetutoringfaq(Map<String, Object> map)
	{
		return (List<Map<String, Object>>) selectList("TuteeProfile.tutoringfaq", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectTuteerefund(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("TuteeProfile.refund", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectTuteeAfterTutoringDetail(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("TuteeProfile.AfterTutoringDetail", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectTuteenicknamecoupon(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("TuteeProfile.nicknamecoupon", map);
	}

	// 이전 튜터링 상세페이지
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectTuteeBeforeTutoringDetail(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("TuteeProfile.BeforeTutoringDetail", map);
	}

	// 예약 튜터링 상세페이지
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectTuteeReservationTutoringDetail(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("TuteeProfile.ReservationTutoringDetail", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectTuteeTutoringDetail(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("TuteeProfile.TutoringDetail", map);
	}
}
