package com.codering.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface TutorApplyService
{

	public List<Map<String, Object>> selectTutorApplyList(HttpServletRequest request, Map<String, Object> map) throws Exception;

	public int deleteTutorApplyStatus(HttpServletRequest request, Map<String, Object> map) throws Exception;

	public List<Map<String, Object>> selectTutorApplyBoard(HttpServletRequest request, Map<String, Object> map) throws Exception;

	public void insertTutorApplyBoardMsg(HttpServletRequest request, Map<String, Object> map);
	
}
