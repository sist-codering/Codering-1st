package com.codering.service;

import java.util.Map;

public interface RrService
{
	public int recommBoardCount(Map<String, Object> map);
	public int recommBoardCheck(Map<String, Object> map);
	public void recommBoard(Map<String, Object> map);
	public int recommCommentCount(Map<String, Object> map);
	public int recommCommentCheck(Map<String, Object> map);
	public void recommComment(Map<String, Object> map);	
	
	public int reportBoardCheck(Map<String, Object> map);
	public int reportCommentCheck(Map<String, Object> map);
	public int reportTutorCheck(Map<String, Object> map);
	public int reportTuteeCheck(Map<String, Object> map);
	public int reportTBoardCheck(Map<String, Object> map);
	public int reportTCommentCheck(Map<String, Object> map);
	
	public void reportBoard(Map<String, Object> map);
	public void reportComment(Map<String, Object> map);
	public void reportTutor(Map<String, Object> map);
	public void reportTutee(Map<String, Object> map);
	public void reportTBoard(Map<String, Object> map);
	public void reportTComment(Map<String, Object> map);
}