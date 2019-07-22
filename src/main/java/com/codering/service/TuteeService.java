package com.codering.service;

import java.util.List;
import java.util.Map;

public interface TuteeService
{
	List<Map<String, Object>> tuteeWrittenBoard(Map<String, Object> map);
	List<Map<String, Object>> tuteeWrittenComment(Map<String, Object> map);
	Map<String, Object> tuteeAskingTutor(Map<String, Object> map);
}
