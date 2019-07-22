package com.codering.service;

import java.util.List;
import java.util.Map;

public interface UserService
{
	public int idOverlap(Map<String, Object> map);
	public int nickOverlap(Map<String, Object> map);
	public void insertData(Map<String, Object> map);
	public Map<String, Object> loginInfo(Map<String, Object> map);
	public Map<String, Object> userProf(Map<String, Object> map);
	public List<Map<String, Object>> alarmList(Map<String, Object> map);
	public void alarmReadCheck(Map<String, Object> map);
}