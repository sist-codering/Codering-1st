package com.codering.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.codering.common.AbstractDAO;

@Repository("TuteeDAO")
public class TuteeDAO extends AbstractDAO
{
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectWrittenBoard(Map<String, Object> map)
	{
		return selectList("tuteemypage.writtenBoard", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectWrittenComment(Map<String, Object> map)
	{
		return selectList("tuteemypage.writtenComment",map);
	}
	
	public void insertAskingTutorInfo(Map<String, Object> map)
	{
		insert("tuteeAsking.tutorInfo", map);
	}
	
	public void insertAskingTutorCareer(Map<String, Object> map)
	{
		insert("tuteeAsking.tutorCareer", map);
	}
	
	public void insertAskingTutorInterest(Map<String, Object> map)
	{
		insert("tuteeAsking.tutorInterest", map);
	}
	
	public void insertAskingTutorCheck(Map<String, Object> map)
	{
		insert("tuteeAsking.tutorCheck", map);
	}
	
	public void insertAskingTutorLink(Map<String, Object> map)
	{
		insert("tuteeAsking.tutorLink", map);
	}
	
	public void updateTuteeTelProf(Map<String, Object> map)
	{
		update("tuteeAsking.tuteeTelProf", map);
	}
	
	
}
