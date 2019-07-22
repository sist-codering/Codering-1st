package com.codering.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codering.dao.MainDAO;

@Service("MainService")
public class MainServiceImpl implements MainService
{
	
	@Autowired
	private MainDAO dao;
	

	@Override
	public Map<String, Object> selectTutoring(Map<String, Object> map)
	{
		Map<String,Object> resultMap = new HashMap<String, Object>();	
		
		
		List<Map<String,Object>> result1 = dao.selectPopularTutoring(map);
		List<Map<String,Object>> result2 = dao.selectNewTutoring(map);
		
		resultMap.put("selectTutorCount",dao.selectTutorCount());
		resultMap.put("selectTuteeCount",dao.selectTuteeCount());		
		
		
		int index1 = 0;
		int index2 = 0;
		
		
		
			for(Map<String,Object> a : result1)
			{	
				
				String[] lang= ((String) a.get("INTEREST_ID")).split(",");
				String[] lv = ((String) a.get("LEVEL_ID")).split(",");
				
				System.out.println(lang[0]);
				System.out.println(lv[0]);
				
				String select = "";
				
				for(int j=0;j<lang.length;j++)
				{
					select += dao.selectInterestName(lang[j]) + " - " + dao.selectLevelName(lv[j]) +" / ";	
					System.out.println(select);
				}
				
				
				Map<String,Object> LangLv = new HashMap<String,Object>();
				String subSelect = select.substring(0,select.length()-3);
				
				LangLv.put("selectLangLv", subSelect);
				
				result1.get(index1).put("selectLangLv", subSelect);
				
				index1++;
					
			}
			
			for(Map<String,Object> a : result2)
			{	
				
				String[] lang= ((String) a.get("INTEREST_ID")).split(",");
				String[] lv = ((String) a.get("LEVEL_ID")).split(",");
				
				System.out.println(lang[0]);
				System.out.println(lv[0]);
				
				String select = "";
				
				for(int j=0;j<lang.length;j++)
				{
					select += dao.selectInterestName(lang[j]) + " - " + dao.selectLevelName(lv[j]) +" / ";	
					System.out.println(select);
				}
				
				
				Map<String,Object> LangLv = new HashMap<String,Object>();
				String subSelect = select.substring(0,select.length()-3);
				
				LangLv.put("selectLangLv", subSelect);
				
				result2.get(index2).put("selectLangLv", subSelect);
				
				index2++;
					
			}
		
		
		
		resultMap.put("popularTutoring",result1);
		resultMap.put("newTutoring",result2);
			
		return resultMap;
	}


	

	

}
