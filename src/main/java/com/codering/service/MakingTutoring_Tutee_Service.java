package com.codering.service;

import java.util.Map;

public interface MakingTutoring_Tutee_Service 
{
	public Map<String, Object> selectRegion();
	
	public void insertTutoring_Tutee(Map<String,Object> map); 
	
	public Map<String, Object> selectName(Map<String,Object> map);

	public Map<String,Object> searchTutor(Map<String,Object> map);
}
