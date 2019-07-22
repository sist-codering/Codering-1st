package com.codering.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codering.dao.MakingTutoring_TuteeDAO;

@Service("MakingTutoring_Tutee_Service")
public class MakingTutoring_Tutee_ServiceImpl implements MakingTutoring_Tutee_Service
{
	
	@Autowired
	private MakingTutoring_TuteeDAO dao;

	@Override
	public Map<String, Object> selectRegion()
	{
		Map<String,Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("selectRegion", dao.selectRegion());
		resultMap.put("selectInterest", dao.selectInterest());
		resultMap.put("selectLevel", dao.selectLevel());
		resultMap.put("selectTime",dao.selectTime());
		return resultMap;
	}

	@Override
	public void insertTutoring_Tutee(Map<String, Object> map)
	{
		try
		{
			dao.insertTutoringTutee(map);
			
			if(map.get("TIME_CAT_ID") instanceof String)
			{	
				dao.insertTutoringTuteeTime(map);
			}
			else
			{
				map.get("TIME_CAT_ID");
			}
			
				
			
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
	}

	@Override
	public Map<String, Object> selectName(Map<String, Object> map)
	{
		Map<String,Object> resultMap = new HashMap<String,Object>();
		
		
		if (map.get("TIME_CAT_ID") instanceof String) 
		{
			resultMap.put("selectTimeName", dao.selectTimeName(map).get("WEEDAY_END") +" - "+dao.selectTimeName(map).get("AM_PM"));
		} 
		else if (map.get("TIME_CAT_ID") instanceof String[]) 
		{
			
			String[] time= (String[])map.get("TIME_CAT_ID");
			
			String selectTimeName="";
			
			for(int i=0;i<time.length;i++)
			{
				selectTimeName += dao.selectTimeName(time[i]).get("WEEDAY_END") +" - "+dao.selectTimeName(time[i]).get("AM_PM") + " / ";
			}
			
			selectTimeName = selectTimeName.substring(0,selectTimeName.length()-3);
			
			resultMap.put("selectTimeName",selectTimeName);
			
		}
		
		if (map.get("LANGLV_ID") instanceof String) 
		{
			String[] langLv = ((String) map.get("LANGLV_ID")).split(",");
			
			resultMap.put("selectLangLvName", dao.selectInterestName(langLv[0]).get("INTEREST_CAT")+" - "+dao.selectLevelName(langLv[1]).get("LEVEL_NAME"));
		} 
		else if (map.get("LANGLV_ID") instanceof String[]) 
		{
			
			String[] langLv= (String[])map.get("LANGLV_ID");
			
			String selectLangLvName = "";
			
			for(int i=0;i<langLv.length;i++)
			{
				String[] div = langLv[i].split(",");
				
				selectLangLvName += dao.selectInterestName(div[0]).get("INTEREST_CAT")+" - "+dao.selectLevelName(div[1]).get("LEVEL_NAME") + " / ";
			}
			
			selectLangLvName = selectLangLvName.substring(0,selectLangLvName.length()-3);
			
			resultMap.put("selectLangLvName", selectLangLvName);
		}
		
		resultMap.put("selectRegionName" ,dao.selectRegionName(map));
			
		return resultMap;
		
		
	}
	
	public Map<String,Object> searchTutor(Map<String,Object> map)
	{
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		
		if (map.get("LANGLV_ID") instanceof String) 
		{
			String[] langLv = ((String) map.get("LANGLV_ID")).split(",");
			
			map.put("INTEREST_ID",langLv[0]);
			map.put("LEVEL_ID",langLv[1]);
		} 
		else if (map.get("LANGLV_ID") instanceof String[]) 
		{
			
			String[] langLv= (String[])map.get("LANGLV_ID");
			
			String interest_id = "";
			String level_id = "";
			
			for(int i=0;i<langLv.length;i++)
			{
				String[] div = langLv[i].split(",");
				
				interest_id += div[0] +","; 
				level_id += div[1] + ",";
			}
			
			interest_id.substring(0, interest_id.length()-1);
			level_id.substring(0, level_id.length()-1);
			
			map.put("INTEREST_ID",interest_id);
			map.put("LEVEL_ID", level_id);
		}
		
		resultMap.put("selectRecommandTutor",dao.selectRecommandTutor(map));
		
		return resultMap;	
	}
	


}

