package com.codering.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface QtboardService
{
	public Map<String, Object> boardList(Map<String, Object> map);
	public int dataCount(Map<String, Object> map);
	public Map<String, Object> readBoardAll(Map<String, Object> map);
	public Map<String, Object> readBoard(Map<String, Object> map);
	public void insertBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;
	public void updateBoard(Map<String, Object> map, HttpServletRequest request);
	public void deleteBoard(Map<String, Object> map);
	public List<Map<String, Object>> commList(Map<String, Object> map);
	public void addComment(Map<String, Object> map);
	public Map<String, Object> commentUpdateForm(Map<String, Object> map);
	public void updateComment(Map<String, Object> map);
	public void deleteComment(Map<String, Object> map);
}
