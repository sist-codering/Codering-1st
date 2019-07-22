package com.codering.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.codering.dao.TuteeDAO;
import com.codering.dao.UserDAO;

@Service("TuteeService")
public class TuteeServiceImpl implements TuteeService
{
	@Resource(name="TuteeDAO")
	private TuteeDAO dao;
	
	@Resource(name="UserDAO")
	private UserDAO uDao;	
	
	@Override
	public List<Map<String, Object>> tuteeWrittenBoard(Map<String, Object> map)
	{
		return dao.selectWrittenBoard(map);
	}

	@Override
	public List<Map<String, Object>> tuteeWrittenComment(Map<String, Object> map)
	{
		return dao.selectWrittenComment(map);
	}

	@Override
	public Map<String, Object> tuteeAskingTutor(Map<String, Object> map)
	{
		dao.insertAskingTutorInfo(map);
		
		Map<String, Object> tempMap = new HashMap<String, Object>();
		
		if(map.get("startDate") == null)
		{
			
		}
		else if(map.get("startDate") instanceof String)
		{
			String startDate = (String) map.get("startDate");		
			String endDate = (String) map.get("endDate");		
			String carrer = (String) map.get("carrer");
			
			tempMap.put("CAREER_START", startDate);
			tempMap.put("CAREER_END", endDate);
			tempMap.put("CAREER_CONTENT", carrer);
			
			dao.insertAskingTutorCareer(tempMap);
		}
		else
		{
			String[] startDate = (String[]) map.get("startDate");		
			String[] endDate = (String[]) map.get("endDate");		
			String[] carrer = (String[]) map.get("carrer");
			
			for(int i=0;i<startDate.length; i++)
			{
				tempMap.put("CAREER_START", startDate[i]);
				tempMap.put("CAREER_END", endDate[i]);
				tempMap.put("CAREER_CONTENT", carrer[i]);
				
				dao.insertAskingTutorCareer(tempMap);
			}		
		}
		
		tempMap.clear();
		
		if(map.get("LANGCAT_ID") instanceof String)
		{
			String langCat = (String) map.get("LANGCAT_ID");
			String langLv = (String) map.get("LANGLV_ID");
			
			tempMap.put("INTEREST_ID", langCat);
			tempMap.put("LEVEL_ID", langLv);
				
			dao.insertAskingTutorInterest(tempMap);
		}
		else
		{
			String[] langCat = (String[]) map.get("LANGCAT_ID");
			String[] langLv = (String[]) map.get("LANGLV_ID");
					
			for(int i=0; i<langCat.length; i++)
			{
				tempMap.put("INTEREST_ID", langCat[i]);
				tempMap.put("LEVEL_ID", langLv[i]);
				
				dao.insertAskingTutorInterest(tempMap);
			}
		}
		
		
		
		tempMap.clear();
		
		if(map.get("chbox") instanceof String)
		{
			String chbox = (String) map.get("chbox");
			
			tempMap.put("INTEREST_ID", chbox);
				
			dao.insertAskingTutorCheck(tempMap);
			
		}
		else
		{
			String[] chbox = (String[]) map.get("chbox");
			
			for(int i=0; i<chbox.length; i++)
			{
				tempMap.put("INTEREST_ID", chbox[i]);
				
				dao.insertAskingTutorCheck(tempMap);
			}
		}
				
		
		
		tempMap.clear();
		
		if(map.get("linkCat") == null)
		{
						
		}
		else if(map.get("linkCat") instanceof String)
		{
			String linkCat = (String) map.get("linkCat");
			String linkContent = (String) map.get("linkContent");
			
			tempMap.put("LINK_CAT_ID", linkCat);
			tempMap.put("LINK_ADDR", linkContent);
				
			dao.insertAskingTutorLink(tempMap);
					
		}
		else
		{
			String[] linkCat = (String[]) map.get("linkCat");
			String[] linkContent = (String[]) map.get("linkContent");
			
			for(int i=0; i<linkCat.length; i++)
			{
				tempMap.put("LINK_CAT_ID", linkCat[i]);
				tempMap.put("LINK_ADDR", linkContent[i]);
				
				dao.insertAskingTutorLink(tempMap);
			}			
		}
		
		
		dao.updateTuteeTelProf(map);
		
		return uDao.loginInfo(map);
		
	}

}
