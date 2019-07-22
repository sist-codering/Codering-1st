package com.codering.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.codering.common.AbstractDAO;

@SuppressWarnings("unchecked")
@Repository("tutorInvitedDAO")
public class TutorInvitedDAO extends AbstractDAO {
	
	/**
	 * 튜터 초대받은튜터링 목록 조회
	 */
	public List<Map<String, Object>> selectTutorInvitedList(Map<String, Object> map) throws Exception {
		// mapper_namespace.query_id
		List<Map<String, Object>> list = selectList("tutorInvited.selectTutorInvitedList", map);
		return list;
	}
	
	/**
	 * 튜터 초대받은튜터링 수락/거절
	 */
	public int updateTutorInvitedStatus(Map<String, Object> map) throws Exception {
		int result = -1;
		result = (Integer) update("tutorInvited.updateTutorInvitedStatus", map);
		return result;
	}

	/**
	 * 튜터의 수락 후 초대게시판에서 튜티장과 대화 
	 */
	public List<Map<String, Object>> selectTutorInvitedBoard(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = selectList("tutorInvited.selectTutorInvitedBoard", map);

		return list;
	}
	
	/**
	 * 수락 후 대화중인 튜티장 이름 조회 
	 */
	public String selectTuteeName(Map<String, Object> map) throws Exception {
		String tuteeName = (String) selectOne("tutorInvited.selectTuteeName", map);

		return tuteeName;
	}

	/**
	 * 수락 후 튜터의 메시지 등록 
	 */
	public int insertTutorInvitedBoardMsg(Map<String, Object> map) throws Exception {
		int result = -1; 
		result = (Integer) insert("tutorInvited.insertTutorInvitedBoardMsg", map);
		return result;
	}
	
	/**
	 * 튜티장의 메시지 읽음 처리 
	 */
	public int updateTutorInvitedBoardRead(Map<String, Object> map) {
		
		int result = -1;
		result = (Integer) update("tutorInvited.updateTutorInvitedBoardRead", map);
		return result;
	}
	
	/**
	 * 튜터의 초대받은 튜터링 확정 
	 */
	public int updateTutorInvitedBoardFix(Map<String, Object> map) {
		
		int result = -1;
		result = (Integer) update("tutorInvited.updateTutorInvitedBoardFix", map);
		return result;
	}
	
	/**
	 * 튜터의 초대받은 튜터링 상세정보 조회
	 */
	public Map<String, Object> selectTutorInvitedTutoringDetail(Map<String, Object> map) {
		
		Map<String, Object> result = (Map<String, Object>) selectOne("tutorInvited.selectTutorInvitedTutoringDetail", map);
		return result;
	}
	
	
	
}