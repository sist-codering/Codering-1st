package com.codering.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface TutorInvitedService {
	public List<Map<String, Object>> selectTutorInvitedList(HttpServletRequest request, Map<String, Object> map) throws Exception;

	public void updateTutorInvitedStatus(HttpServletRequest request, Map<String, Object> map) throws Exception;

	public List<Map<String, Object>> selectTutorInvitedBoard(HttpServletRequest request, Map<String, Object> map) throws Exception;

	public String selectTuteeName(HttpServletRequest request, Map<String, Object> map) throws Exception;

	public void insertTutorInvitedBoardMsg(HttpServletRequest request, Map<String, Object> map) throws Exception;

	public void updateTutorInvitedBoardRead(HttpServletRequest request, Map<String, Object> map) throws Exception;

	public void updateTutorInvitedBoardFix(HttpServletRequest request, Map<String, Object> map) throws Exception;

	public Map<String, Object> selectTutorInvitedTutoringDetail(HttpServletRequest request, Map<String, Object> map) throws Exception;
}
