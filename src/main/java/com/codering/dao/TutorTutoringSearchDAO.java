package com.codering.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.codering.common.AbstractDAO;

@SuppressWarnings("unchecked")
@Repository("tutorTutoringSearchDAO")
public class TutorTutoringSearchDAO extends AbstractDAO {

	/**
	 * 튜터 개설 인기 튜터링 찾기 목록 - TOP 3
	 */
	public List<Map<String, Object>> selectTutorTutoringSearchList(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = selectList("tutorTutoringSearch.selectTutorTutoringSearchList", map);
		return list;
	}
	
	/**
	 * Filter1
	 */
	public List<Map<String, Object>> selectTutorTutoringFilterList1(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = selectList("tutorTutoringSearch.selectTutorTutoringFilterList1", map);
		return list;
	}
	
	/**
	 * Filter2
	 */
	public List<Map<String, Object>> selectTutorTutoringFilterList2(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = selectList("tutorTutoringSearch.selectTutorTutoringFilterList2", map);
		return list;
	}
	
	/**
	 * Filter3
	 */
	public List<Map<String, Object>> selectTutorTutoringFilterList3(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = selectList("tutorTutoringSearch.selectTutorTutoringFilterList3", map);
		return list;
	}

	/**
	 * 튜터의 튜터링 찾기 Paging
	 */
	public int selectTutorTutoringSearchListCnt2(Map<String, Object> map) throws Exception {
		int listCnt = (Integer) selectOne("tutorTutoringSearch.selectTutorTutoringSearchListCnt2", map);
		return listCnt;
	}

	/**
	 * 튜터 개설 튜터링 찾기 목록
	 */
	public List<Map<String, Object>> selectTutorTutoringSearchList2(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = selectList("tutorTutoringSearch.selectTutorTutoringSearchList2", map);
		return list;
	}

}