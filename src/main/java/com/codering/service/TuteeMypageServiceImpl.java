package com.codering.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.codering.dao.TuteeMypageDAO;

@Service("TuteeMypageService")
public class TuteeMypageServiceImpl implements TuteeMypageService
{
	@Resource
	private TuteeMypageDAO dao;
	
	//진행중 튜터링 리스트
	public List<Map<String, Object>> selectIngList(Map<String, Object> map)
	{
		return dao.selectingList(map);	
	}
	
	//이전 튜터링 리스트
	public List<Map<String, Object>> selectBeforeList(Map<String, Object> map)
	{
		return dao.selectbeforeList(map);	
	}
	
	//예정 튜터링 리스트
	public List<Map<String, Object>> selectAftereList(Map<String, Object> map)
	{
		return dao.selectafterList(map);
	}
	
	// 일정정보
	public Map<String, Object> selectschedule(Map<String, Object> map)
	{
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("detail", dao.selectdetail1(map));
		resultMap.put("schedule", dao.selectschedule(map));		
		
		return resultMap;
	}
	
	//자신의 후기 프린트
	public Map<String, Object> selectmyReview(Map<String, Object> map)
	{
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("detail", dao.selectdetail1(map));
		resultMap.put("review", dao.selectmyReview(map));
		
		return resultMap;
	}
	
	// 후기 입력
	public void insertReview(Map<String, Object> map)
	{
		dao.insertReview(map);
	}
	
	// 예약 튜터링 리스트
	public List<Map<String, Object>> selectreserveList(Map<String, Object> map)
	{
		return dao.selectreserveList(map);
	}
	
	// 예약튜터링 예약취소
	public void deleteReserve(Map<String, Object> map)
	{
		dao.deleteReserve(map);
	}
	
	//중도포기버튼
	public void inserttuteedrop(Map<String, Object> map)
	{
		dao.inserttuteedrop(map);
	}
	
	// 찜한 튜터링 리스트
	public List<Map<String, Object>> selectpickList(Map<String, Object> map)
	{
		return dao.selectpickList(map);
	}
	

}
