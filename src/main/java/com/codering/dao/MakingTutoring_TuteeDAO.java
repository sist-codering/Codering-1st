package com.codering.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.codering.common.AbstractDAO;

@Repository("MakingTutoring_TuteeDAO")
public class MakingTutoring_TuteeDAO extends AbstractDAO
{
	public void insertTutoringTutee(Map<String, Object> map)
	{
		insert("makingtutoring_tutee.insertTutoringTutee", map);
	}
	
	public void insertTutoringTuteeTime(Map<String, Object> map)
	{
		insert("makingtutoring_tutee.insertTutoringTuteeTime",map);
	}
	
	public void insertTuteeNeedTech(Map<String, Object> map)
	{
		insert("makingtutoring_tutee.insertTuteeNeedTech",map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectRegion()
	{
		return selectList("makingtutoring_tutee.selectRegion");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectInterest()
	{
		return selectList("makingtutoring_tutee.selectInterest");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectLevel()
	{
		return selectList("makingtutoring_tutee.selectLevel");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectTime()
	{
		return selectList("makingtutoring_tutee.selectTime");
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectRegionName(Map<String,Object> map)
	{
		return (Map<String, Object>) selectOne("makingtutoring_tutee.selectRegionName",map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectTimeName(Map<String,Object> map)
	{
		return (Map<String, Object>) selectOne("makingtutoring_tutee.selectTimeName",map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectTimeName(String string)
	{
		return (Map<String, Object>) selectOne("makingtutoring_tutee.selectTimeName",string);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectInterestName(String string)
	{
		return (Map<String, Object>) selectOne("makingtutoring_tutee.selectInterestName",string);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectLevelName(String string)
	{
		return (Map<String, Object>) selectOne("makingtutoring_tutee.selectLevelName",string);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectInterestName(Map<String,Object> map)
	{
		return (Map<String, Object>) selectOne("makingtutoring_tutee.selectInterestName",map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectLevelName(Map<String,Object> map)
	{
		return (Map<String, Object>) selectOne("makingtutoring_tutee.selectLevelName",map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectRecommandTutor(Map<String,Object> map)
	{
		return selectList("makingtutoring_tutee.selectRecommandTutor",map);
		
	}
	
	
	
	
	
}
