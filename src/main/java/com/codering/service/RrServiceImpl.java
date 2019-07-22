package com.codering.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codering.dao.RecommRepDAO;

@Service("RrService")
public class RrServiceImpl implements RrService
{
	@Autowired
	private RecommRepDAO dao;

	@Override
	public int recommBoardCount(Map<String, Object> map)
	{
		return dao.recommBoardCount(map);
	}

	@Override
	public int recommBoardCheck(Map<String, Object> map)
	{
		return dao.recommBoardCheck(map);
	}

	@Override
	public void recommBoard(Map<String, Object> map)
	{
		dao.recommBoard(map);
	}

	@Override
	public int recommCommentCount(Map<String, Object> map)
	{
		return dao.recommCommentCount(map);
	}

	@Override
	public int recommCommentCheck(Map<String, Object> map)
	{
		return dao.recommCommentCheck(map);
	}

	@Override
	public void recommComment(Map<String, Object> map)
	{
		dao.recommComment(map);
	}

	@Override
	public int reportBoardCheck(Map<String, Object> map)
	{
		return dao.reportBoardCheck(map);
	}

	@Override
	public int reportCommentCheck(Map<String, Object> map)
	{
		return dao.reportCommentCheck(map);
	}

	@Override
	public int reportTutorCheck(Map<String, Object> map)
	{
		return dao.reportTutorCheck(map);
	}

	@Override
	public int reportTuteeCheck(Map<String, Object> map)
	{
		return dao.reportTuteeCheck(map);
	}

	@Override
	public int reportTBoardCheck(Map<String, Object> map)
	{
		return dao.reportTBoardCheck(map);
	}

	@Override
	public int reportTCommentCheck(Map<String, Object> map)
	{
		return dao.reportTCommentCheck(map);
	}

	@Override
	public void reportBoard(Map<String, Object> map)
	{
		dao.reportBoard(map);
	}

	@Override
	public void reportComment(Map<String, Object> map)
	{
		dao.reportComment(map);
	}

	@Override
	public void reportTutor(Map<String, Object> map)
	{
		dao.reportTutor(map);
	}

	@Override
	public void reportTutee(Map<String, Object> map)
	{
		dao.reportTutee(map);
	}

	@Override
	public void reportTBoard(Map<String, Object> map)
	{
		dao.reportTBoard(map);
	}

	@Override
	public void reportTComment(Map<String, Object> map)
	{
		dao.reportTComment(map);
	}	
}
