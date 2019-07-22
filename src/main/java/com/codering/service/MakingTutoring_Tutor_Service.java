package com.codering.service;

import java.util.Map;

public interface MakingTutoring_Tutor_Service
{
	public Map<String, Object> selectTutorQNA(Map<String, Object> map);

	public void insertTutoring_Tutor(Map<String, Object> map);

	public Map<String, Object> selectChoice();
	
	public int selectRegCount(Map<String,Object> map);
	
	public Map<String, Object> selectName(Map<String,Object> map);
	
	public Map<String,Object> selectTutorName(Map<String,Object> map);
}
