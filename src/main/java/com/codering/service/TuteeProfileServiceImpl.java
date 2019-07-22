package com.codering.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codering.dao.TuteeProfileDAO;

@Service("TuteeProfileService")
public class TuteeProfileServiceImpl implements TuteeProfileService
{

	@Autowired
	private TuteeProfileDAO dao;

	@Override
	public Map<String, Object> selectTuteeProfile(Map<String, Object> map)
	{
		Map<String, Object> resultMap = new HashMap<String, Object>();

		resultMap.put("info", dao.selectTuteeProfile(map));
		resultMap.put("interest", dao.selectTuteeInterest(map));

		/*
		 * resultMap.put("writtenComm", dao.selectTuteewrittenComm(map));
		 * resultMap.put("writtenCom", dao.selectTuteewrittenCom(map));
		 * resultMap.put("qtReply", dao.selectTuteeqtReply(map));
		 * resultMap.put("tutoringReply", dao.selectTuteetutoringReply(map));
		 * resultMap.put("tuteeingDetail", dao.selectTuteetuteeingDetail(map));
		 * resultMap.put("tutoringfaq", dao.selectTuteetutoringfaq(map));
		 * resultMap.put("refund", dao.selectTuteerefund(map));
		 */

		return resultMap;
	}

	@Override
	public List<Map<String, Object>> selectTuteeInterest(Map<String, Object> map)
	{
		return dao.selectTuteeInterest(map);
	}

	@Override
	public List<Map<String, Object>> selectTuteewrittenComm(Map<String, Object> map)
	{
		return dao.selectTuteewrittenComm(map);
	}

	@Override
	public List<Map<String, Object>> selectTuteewrittenCom(Map<String, Object> map)
	{
		return dao.selectTuteewrittenCom(map);
	}

	@Override
	public List<Map<String, Object>> selectTuteeqtReply(Map<String, Object> map)
	{
		return dao.selectTuteeqtReply(map);
	}

	@Override
	public List<Map<String, Object>> selectTuteetutoringReply(Map<String, Object> map)
	{
		return dao.selectTuteetutoringReply(map);
	}

	@Override
	public Map<String, Object> selectTuteetuteeingDetail(Map<String, Object> map)
	{
		return dao.selectTuteetuteeingDetail(map);
	}

	@Override
	public List<Map<String, Object>> selectTuteetutoringfaq(Map<String, Object> map)
	{
		return dao.selectTuteetutoringfaq(map);
	}

	@Override
	public Map<String, Object> selectTuteerefund(Map<String, Object> map)
	{
		return dao.selectTuteerefund(map);
	}

	@Override
	public Map<String, Object> selectTuteeAfterTutoringDetail(Map<String, Object> map)
	{
		return dao.selectTuteeAfterTutoringDetail(map);
	}

	@Override
	public Map<String, Object> selectTuteenicknamecoupon(Map<String, Object> map)
	{
		return dao.selectTuteenicknamecoupon(map);
	}

	// 이전튜터링 상세
	@Override
	public Map<String, Object> selectTuteeBeforeTutoringDetail(Map<String, Object> map)
	{
		return dao.selectTuteeBeforeTutoringDetail(map);
	}

	// 예정 튜터링 상세
	@Override
	public Map<String, Object> selectTuteeReservationTutoringDetail(Map<String, Object> map)
	{
		return dao.selectTuteeReservationTutoringDetail(map);
	}

	@Override
	public Map<String, Object> selectTuteeTutoringDetail(Map<String, Object> map)
	{

		return dao.selectTuteeTutoringDetail(map);
	}

	@Override
	public Map<String, Object> TutoringDetail_review(Map<String, Object> map)
	{

		return dao.TutoringDetail_review(map);
	}

}
