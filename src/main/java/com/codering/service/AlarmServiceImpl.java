package com.codering.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.codering.dao.AlarmDAO;

public class AlarmServiceImpl implements AlarmService
{
	@Autowired
	AlarmDAO dao;

	@Override
	public List<Map<String, Object>> selectAlarmList(Map<String, Object> map)
	{
		return null;
	}


}
