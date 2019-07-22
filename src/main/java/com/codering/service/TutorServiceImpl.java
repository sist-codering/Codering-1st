package com.codering.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.codering.dao.TutorDAO;

@Service("TutorService")
public class TutorServiceImpl implements TutorService
{
	@Resource
	private TutorDAO dao;

	// 진행 중 튜터링 리스트
	@Override
	public List<Map<String, Object>> selectTutorIngList(Map<String, Object> map)
	{
		return dao.selectTutorIngList(map);
	}

	// 이전 튜터링 리스트 출력
	public List<Map<String, Object>> selectTutorBeforeList(Map<String, Object> map)
	{

		return dao.selectTutorBeforeList(map);
	}

	// 모집중 튜터링 리스트 출력
	public List<Map<String, Object>> selectTutorRecruitingList(Map<String, Object> map)
	{
		return dao.selectTutorRecruitingList(map);

	}

	// 튜터링 상세정보 페이지 출력
	@Override
	public Map<String, Object> selectTutorDetail(Map<String, Object> map)
	{
		Map<String, Object> resultMap = new HashMap<String, Object>();

		resultMap.put("detail", dao.selectTutorDetail1(map));
		resultMap.put("tutorinfo", dao.selectTutorDetail2(map));
		resultMap.put("faq", dao.selectTutorDetail3(map));
		resultMap.put("review", dao.selectTutorDetail4(map));

		return resultMap;
	}

	// 튜터링 폐강
	public void updateTutoringDrop(Map<String, Object> map)
	{
		dao.updateTutoringDrop(map);
	}

	// 튜터링 문의하기
	public void insertfaq(Map<String, Object> map)
	{
		dao.insertfaq(map);
	}

	// 튜터링 문의 삭제
	public void deletefaq(Map<String, Object> map)
	{
		dao.deletefaq(map);
	}

	// 튜티관리 페이지 출력
	public List<Map<String, Object>> selectTuteeManage(Map<String, Object> map)
	{

		return dao.selectTuteeManage(map);

	}

	// 튜티평가입력
	public void insertTuteeReview(Map<String, Object> map)
	{
		dao.insertTuteeReview(map);
	}

	// 튜티 id/ 튜티 프로필사진
	public Map<String, Object> selectTutorProf(Map<String, Object> map)
	{
		return dao.selectTutorProf(map);
	}

	// 일정정보 리스트 출력
	public Map<String, Object> selectScheduleList(Map<String, Object> map)
	{
		Map<String, Object> resultMap = new HashMap<String, Object>();

		resultMap.put("detail", dao.selectTutorDetail1(map));
		resultMap.put("schedule", dao.scheduleList(map));
		resultMap.put("tutorprof", dao.selectTutorProf(map));

		return resultMap;
	}

	// 일정정보 업데이트
	public void updateSchedule(Map<String, Object> map)
	{
		dao.updateSchedule(map);
	}

	// 후기 출력
	public Map<String, Object> selectreviewList(Map<String, Object> map)
	{
		Map<String, Object> resultMap = new HashMap<String, Object>();

		resultMap.put("detail", dao.selectTutorDetail1(map));
		resultMap.put("review", dao.reviewList(map));
		resultMap.put("tutorprof", dao.selectTutorProf(map));

		return resultMap;
	}

	// 강퇴버튼
	public void insertTutorDrop(Map<String, Object> map)
	{
		dao.insertTutorDrop(map);
	}

	// 튜티 중도포기 승인 버튼
	public void updateTuteeDrop(Map<String, Object> map)
	{
		dao.updateTuteeDrop(map);
	}

	// 스케쥴 입력
	public void insertSchedule(Map<String, Object> map)
	{
		dao.insertSchedule(map);
	}

	// 문의 관리 리스트
	public List<Map<String, Object>> selectQnaList(Map<String, Object> map)
	{
		return dao.selectQnaList(map);
	}

	// 문의 관리 상세페이지
	public Map<String, Object> selectQnaDetail(Map<String, Object> map)
	{

		Map<String, Object> resultMap = new HashMap<String, Object>();

		resultMap.put("qnaQ", dao.selectqnaQ(map));
		resultMap.put("qnaA", dao.selectqnaA(map));

		return resultMap;

	}

	// 문의 관리 답변 입력
	public void insertqnaA(Map<String, Object> map)
	{
		dao.insertqnaA(map);
	}

	// 문의 관리 답변 수정
	public void updateQnaA(Map<String, Object> map)
	{
		dao.updateQnaA(map);
	}

	// 문의 관리 답변 삭제
	public void deleteQnaA(Map<String, Object> map)
	{
		dao.deleteQnaA(map);
	}

	// 튜터 프로필 후기
	public List<Map<String, Object>> selecttutorprofilereview(Map<String, Object> map)
	{
		return dao.selecttutorprofilereview(map);
	}

}
