package com.codering.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codering.dao.TutorApplyDAO;
import com.codering.dao.TutorInvitedDAO;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@SuppressWarnings({ "unchecked", "rawtypes" })
@Service("tutorApplyService")
public class TutorApplyServiceImpl implements TutorApplyService {
	
	@Autowired
	private TutorApplyDAO tutorApplyDAO;

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
	 * 튜터가 지원한 튜터링 목록 조회
	 */
	@Override
	public List<Map<String, Object>> selectTutorApplyList(HttpServletRequest request, Map<String, Object> map) throws Exception
	{	
		map = setMemberInfo(request, map);

		List list = tutorApplyDAO.selectTutorApplyList(map);
		
		return list;
	}

	/**
	 * 튜터가 지원한 튜터링 삭제 
	 */
	@Override
	public int deleteTutorApplyStatus(HttpServletRequest request, Map<String, Object> map) throws Exception
	{
		map = setMemberInfo(request, map);
		
		int result = tutorApplyDAO.deleteTutorApplyStatus(map);
		
		return result;
	}
	
	/**
	 * 대화 버튼 클릭시 튜터와 튜티장의 초대 게시판 출력 
	 */
	@Override
	public List<Map<String, Object>> selectTutorApplyBoard(HttpServletRequest request, Map<String, Object> map)	throws Exception
	{
		map = setMemberInfo(request, map);
		
		List list = tutorApplyDAO.selectTutorApplyBoard(map);
		return list;
	}
	
	/**
	 * 튜터의 지원 게시판 메시지 등록
	 */
	@Override
	public void insertTutorApplyBoardMsg(HttpServletRequest request, Map<String, Object> map)
	{
		map = setMemberInfo(request, map);
		
		int RESULT = -1;
		RESULT = tutorApplyDAO.insertTutorApplyBoardMsg(map);
		request.setAttribute("RESULT", RESULT);
	}

	
}
