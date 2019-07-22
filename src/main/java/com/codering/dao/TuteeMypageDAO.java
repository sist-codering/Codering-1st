package com.codering.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.codering.common.AbstractDAO;

@Repository("TuteeMypageDAO")
public class TuteeMypageDAO extends AbstractDAO
{
	// 진행중 튜터링 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectingList(Map<String, Object> map)
	{
		return selectList("mypage_tutoring.ingList", map);
	}

	// 이전 튜터링 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectbeforeList(Map<String, Object> map)
	{
		return selectList("mypage_tutoring.beforeList", map);
	}

	// 예정 튜터링 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectafterList(Map<String, Object> map)
	{
		return selectList("mypage_tutoring.afterList", map);
	}

	// 튜터링 리스트 상단 정보
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectdetail1(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("mypage_tutoring.detail1", map);
	}

	// 일정정보
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectschedule(Map<String, Object> map)
	{
		return selectList("mypage_tutoring.schedule", map);
	}

	// 자신의 후기 프린트
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectmyReview(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("mypage_tutoring.myreview", map);
	}

	// 후기 입력
	public void insertReview(Map<String, Object> map)
	{
		insert("mypage_tutoring.insertReview", map);
	}

	// 예약튜터링 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectreserveList(Map<String, Object> map)
	{
		return selectList("mypage_tutoring.reserveList", map);
	}

	// 예약튜터링 예약취소
	public void deleteReserve(Map<String, Object> map)
	{
		delete("mypage_tutoring.cancelReserve", map);
	}
		
	// 중도포기
	public void inserttuteedrop(Map<String, Object> map)
	{
		insert("mypage_tutoring.tuteedrop", map);
	}

	// 찜한튜터링 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectpickList(Map<String, Object> map)
	{
		return selectList("mypage_tutoring.pickList", map);
	}

}