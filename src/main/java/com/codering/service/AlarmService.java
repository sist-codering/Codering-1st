package com.codering.service;

import java.util.List;
import java.util.Map;

public interface AlarmService
{
	public List<Map<String, Object>> selectAlarmList(Map<String, Object> map);
}
