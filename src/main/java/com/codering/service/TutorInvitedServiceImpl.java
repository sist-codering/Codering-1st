package com.codering.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codering.dao.TutorInvitedDAO;

@SuppressWarnings({ "unchecked", "rawtypes" })
@Service("tutorInvitedService")
public class TutorInvitedServiceImpl implements TutorInvitedService {
	@Autowired
	private TutorInvitedDAO tutorInvitedDAO;

	private Map<String, Object> setMemberInfo(HttpServletRequest request, Map<String, Object> map) {
//		Map loginInfo = (Map) request.getSession().getAttribute("loginInfo");
//		String MEMBER_ID = loginInfo.get("MEMBER_ID") == null ? "" : (String) loginInfo.get("MEMBER_ID");
//		String NICKNAME = loginInfo.get("NICKNAME") == null ? "" : (String) loginInfo.get("NICKNAME");

		String MEMBER_ID = "";
		String NICKNAME = "";
		String TUTOR_ID = "";
		String TUTOR_NAME = "";
//		if ("".equals(MEMBER_ID)) {
			// TODO 세션에서 꺼내올 예정
			MEMBER_ID = "31";
			NICKNAME = "미스터추";
			TUTOR_ID = "10";
			TUTOR_NAME = "추신수";			
			
//		}
		map.put("MEMBER_ID", MEMBER_ID);
		map.put("NICKNAME", NICKNAME);
		map.put("TUTOR_ID", TUTOR_ID);
		map.put("TUTOR_NAME", TUTOR_NAME);

		return map;
	}
	
	/**
	 * 튜터 초대받은튜터링 목록 조회
	 */
	@Override
	public List<Map<String, Object>> selectTutorInvitedList(HttpServletRequest request, Map<String, Object> map) throws Exception {
		map = setMemberInfo(request, map);

		List list = tutorInvitedDAO.selectTutorInvitedList(map);

		return list;
	}

	/**
	 * 튜터 초대받은튜터링 수락/거절
	 */
	@Override
	public void updateTutorInvitedStatus(HttpServletRequest request, Map<String, Object> map) throws Exception {
		int result = -1;
		result = tutorInvitedDAO.updateTutorInvitedStatus(map);
		request.setAttribute("result", result);
	}

	/**
	 * 튜터의 수락 후 초대게시판에서 튜티장과 대화 
	 */
	@Override
	public List<Map<String, Object>> selectTutorInvitedBoard(HttpServletRequest request, Map<String, Object> map) throws Exception {
		map = setMemberInfo(request, map);

		List list = tutorInvitedDAO.selectTutorInvitedBoard(map);

		return list;
	}
	/**
	 * 수락 후 대화중인 튜티장 이름 조회
	 */
	@Override
	public String selectTuteeName(HttpServletRequest request, Map<String, Object> map) throws Exception {
		map = setMemberInfo(request, map);

		String tuteeName = tutorInvitedDAO.selectTuteeName(map);

		return tuteeName;
	}
	
	/**
	 * 튜터의 초대 게시판 메시지 등록 
	 */
	@Override
	public void insertTutorInvitedBoardMsg(HttpServletRequest request, Map<String, Object> map) throws Exception {
		map = setMemberInfo(request, map);

		int RESULT = -1;
		RESULT = tutorInvitedDAO.insertTutorInvitedBoardMsg(map);
		request.setAttribute("RESULT", RESULT);
	}
	
	/**
	 * 튜티장의 메시지 읽음 처리 
	 */
	@Override
	public void updateTutorInvitedBoardRead(HttpServletRequest request, Map<String, Object> map) throws Exception {
		map = setMemberInfo(request, map);
		
		int RESULT = -1;
		RESULT = tutorInvitedDAO.updateTutorInvitedBoardRead(map);
		request.setAttribute("RESULT", RESULT);
	}
	
	/**
	 * 튜터의 초대받은 튜터링 확정 
	 */
	@Override
	public void updateTutorInvitedBoardFix(HttpServletRequest request, Map<String, Object> map) throws Exception {
		map = setMemberInfo(request, map);
		
		int RESULT = -1;
		RESULT = tutorInvitedDAO.updateTutorInvitedBoardFix(map);
		request.setAttribute("RESULT", RESULT);
		
	}
	/**
	 * 튜터의 초대받은 튜터링 상세정보 조회 
	 */
	@Override
	public Map<String, Object> selectTutorInvitedTutoringDetail(HttpServletRequest request, Map<String, Object> map) throws Exception {
		map = setMemberInfo(request, map);
		
		Map<String, Object> result = tutorInvitedDAO.selectTutorInvitedTutoringDetail(map);
		
		return result;
	}
}
