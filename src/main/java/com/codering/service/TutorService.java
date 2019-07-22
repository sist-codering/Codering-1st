package com.codering.service;

import java.util.List;
import java.util.Map;

public interface TutorService
{
	// 진행 중 튜터링 리스트
	public List<Map<String, Object>> selectTutorIngList(Map<String, Object> map);

	// 이전 튜터링 리스트 출력
	public List<Map<String, Object>> selectTutorBeforeList(Map<String, Object> map);

	// 모집중 튜터링 리스트 출력
	public List<Map<String, Object>> selectTutorRecruitingList(Map<String, Object> map);

	// 튜터링 상세정보 페이지 출력
	public Map<String, Object> selectTutorDetail(Map<String, Object> map);

	// 튜터링 폐강
	public void updateTutoringDrop(Map<String, Object> map);

	// 문의하기
	public void insertfaq(Map<String, Object> map);

	// 문의 삭제
	public void deletefaq(Map<String, Object> map);

	// 튜티관리페이지 출력
	public List<Map<String, Object>> selectTuteeManage(Map<String, Object> map);

	// 튜티평가입력
	public void insertTuteeReview(Map<String, Object> map);

	// 튜티 id/ 튜티 프로필사진
	public Map<String, Object> selectTutorProf(Map<String, Object> map);

	// 일정정보 리스트 출력
	public Map<String, Object> selectScheduleList(Map<String, Object> map);

	// 일정정보 수정
	public void updateSchedule(Map<String, Object> map);

	// 후기 출력
	public Map<String, Object> selectreviewList(Map<String, Object> map);

	// 강퇴버튼
	public void insertTutorDrop(Map<String, Object> map);

	// 튜티 중도포기 승인 버튼
	public void updateTuteeDrop(Map<String, Object> map);

	// 일정 관리 입력
	public void insertSchedule(Map<String, Object> map);

	// 문의 관리 리스트
	public List<Map<String, Object>> selectQnaList(Map<String, Object> map);

	// 문의 관리 상세페이지
	public Map<String, Object> selectQnaDetail(Map<String, Object> map);
	
	// 문의 관리 답변 입력
	public void insertqnaA(Map<String, Object> map);
	
	//문의 관리 답변 수정
	public void updateQnaA(Map<String, Object> map);
	
	//문의 관리 답변 삭제
	public void deleteQnaA(Map<String, Object> map);
	
	//튜터 프로필 후기
	public List<Map<String, Object>> selecttutorprofilereview(Map<String, Object> map);
	

}
