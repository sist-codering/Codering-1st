package com.codering.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codering.dao.AlarmDAO;
import com.codering.dao.UserDAO;

@Service("UserService")
public class UserServiceImpl implements UserService
{	
	@Resource(name="UserDAO")
	private UserDAO dao;	
	
	@Autowired
	private AlarmDAO alarmDao;

	@Override
	public int idOverlap(Map<String, Object> map)
	{
		return dao.selectIdOverlap(map);
	}

	@Override
	public int nickOverlap(Map<String, Object> map)
	{
		return dao.selectNickOverlap(map);
	}

	@Override
	public void insertData(Map<String, Object> map)
	{
		dao.insertData(map);		
	}

	@Override
	public Map<String, Object> loginInfo(Map<String, Object> map)
	{
		return dao.loginInfo(map);
	}

	@Override
	public Map<String, Object> userProf(Map<String, Object> map)
	{
		return dao.userProf(map);
	}

	@Override
	public List<Map<String, Object>> alarmList(Map<String, Object> map)
	{
		return alarmDao.selectAlarmList(map);
	}

	@Override
	public void alarmReadCheck(Map<String, Object> map)
	{
		alarmDao.updateAlarmRead(map);
	}
	
	

}
