package com.codering.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.codering.common.AbstractDAO;

@Repository("TutorDAO")
public class TutorDAO extends AbstractDAO
{
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectTutorInfo(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("tutormypage.info", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTutorCareer(Map<String, Object> map)
	{
		return selectList("tutormypage.career", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTutorIngList(Map<String, Object> map)
	{
		return selectList("tutorpage_tutoring.ingList", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTutorBeforeList(Map<String, Object> map)
	{
		return selectList("tutorpage_tutoring.beforeList", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTutorRecruitingList(Map<String, Object> map)
	{
		return selectList("tutorpage_tutoring.recruitingList", map);
	}

	// 튜터링 상세페이지 출력
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTutorDetail1(Map<String, Object> map)
	{
		return selectList("tutorpage_tutoring.tutoringDetail1", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTutorDetail2(Map<String, Object> map)
	{
		return selectList("tutorpage_tutoring.tutoringDetail2", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTutorDetail3(Map<String, Object> map)
	{
		return selectList("tutorpage_tutoring.tutoringDetail3", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectTutorDetail4(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("tutorpage_tutoring.tutoringDetail4", map);
	}

	// 튜터링 폐강하기
	public void updateTutoringDrop(Map<String, Object> map)
	{
		update("tutorpage_tutoring.tutoringDrop", map);
	}

	// 문의하기
	public void insertfaq(Map<String, Object> map)
	{
		insert("tutorpage_tutoring.insertfaq", map);
	}

	public void deletefaq(Map<String, Object> map)
	{
		update("tutorpage_tutoring.deletefaq", map);
	}

	// 튜티관리
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTuteeManage(Map<String, Object> map)
	{
		return selectList("tutorpage_tutoring.manageTutee", map);
	}

	// 튜티 평가하기
	public void insertTuteeReview(Map<String, Object> map)
	{
		insert("tutorpage_tutoring.addTuteeReview", map);
	}

	// 튜터 프로필 사진
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectTutorProf(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("tutorpage_tutoring.tutorProf", map);
	}

	// 일정정보 스케쥴 리스트 출력
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> scheduleList(Map<String, Object> map)
	{
		return selectList("tutorpage_tutoring.scheduleList", map);
	}

	// 일정정보 수정
	public void updateSchedule(Map<String, Object> map)
	{
		update("tutorpage_tutoring.updateSchedule", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> reviewList(Map<String, Object> map)
	{
		return selectList("tutorpage_tutoring.reviewList", map);
	}

	// 강퇴버튼
	public void insertTutorDrop(Map<String, Object> map)
	{
		delete("tutorpage_tutoring.tutorDrop", map);
	}

	// 튜티 중도포기 승인 버튼
	public void updateTuteeDrop(Map<String, Object> map)
	{
		delete("tutorpage_tutoring.tuteeDrop", map);
	}

	// 일정 관리 입력
	public void insertSchedule(Map<String, Object> map)
	{
		insert("tutorpage_tutoring.insertSchedule", map);
	}

	// 문의 관리 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectQnaList(Map<String, Object> map)
	{
		return selectList("tutorpage_tutoring.qnaList", map);
	}

	// 문의 관리 문의출력
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectqnaQ(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("tutorpage_tutoring.qnaQ", map);
	}

	// 문의 관리 답변 출력
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectqnaA(Map<String, Object> map)
	{
		return (Map<String, Object>) selectOne("tutorpage_tutoring.qnaA", map);
	}
	
	// 문의 관리 답변 입력
	public void insertqnaA(Map<String, Object> map)
	{
		insert("tutorpage_tutoring.insertQnaA", map);
	}
	
	//문의 관리 답변 수정
	public void updateQnaA(Map<String, Object> map)
	{
		update("tutorpage_tutoring.updateQnaA", map);
	}
	
	//문의 관리 답변 삭제
	public void deleteQnaA(Map<String, Object> map)
	{
		delete("tutorpage_tutoring.deleteQna", map);
	}
	
	//튜터 프로필 후기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selecttutorprofilereview(Map<String, Object> map)
	{
		return selectList("tutorpage_tutoring.tutorprofilereview", map);
	}
	
	
	

}