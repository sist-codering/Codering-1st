package com.codering.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codering.dao.MakingTutoring_TutorDAO;

@Service("MakingTutoring_Tutor_Service")
public class MakingTutoring_Tutor_ServiceImpl implements MakingTutoring_Tutor_Service
{
	@Autowired
	private MakingTutoring_TutorDAO dao;

	@Override
	public Map<String, Object> selectTutorQNA(Map<String, Object> map)
	{
		Map<String, Object> resultMap = new HashMap<String, Object>();

		resultMap.put("selectTutorQNA", dao.selectTutorQNA(map));

		return resultMap;
	}

	@Override
	public void insertTutoring_Tutor(Map<String, Object> map)
	{
		try
		{
			dao.insertTutoringTutor(map);

			if (map.get("question") instanceof String)
			{
				String question = (String) map.get("question");
				String answer = (String) map.get("answer");

				Map<String, Object> result = new HashMap<String, Object>();
				result.put("FAQ_QUESTION", question);
				result.put("FAQ_ANSWER", answer);

				dao.insertTutorFAQ(result);

			} else if (map.get("question") instanceof String[])
			{
				String[] question = (String[]) map.get("question");
				String[] answer = (String[]) map.get("answer");

				for (int i = 0; i < question.length; i++)
				{
					
					Map<String, Object> result = new HashMap<String, Object>();
					result.put("FAQ_QUESTION", question[i]);
					result.put("FAQ_ANSWER", answer[i]);
					dao.insertTutorFAQ(result);
				}

			}

			if (map.get("WEEK_NAME_ID") instanceof String)
			{
				Map<String, Object> result = new HashMap<String, Object>();
				String weekId = (String) map.get("WEEK_NAME_ID");
				result.put("WEEK_NAME_ID", weekId);
				dao.insertTutoringWeek(result);
			} else if (map.get("WEEK_NAME_ID") instanceof String[])
			{
				String[] weekId = (String[]) map.get("WEEK_NAME_ID");

				for (int i = 0; i < weekId.length; i++)
				{
					Map<String, Object> result = new HashMap<String, Object>();

					result.put("WEEK_NAME_ID", weekId[i]);

					dao.insertTutoringWeek(result);
				}

			}

			if (map.get("LANGLV_ID") instanceof String)
			{

				String[] langLv = ((String) map.get("LANGLV_ID")).split(",");

				Map<String, Object> result = new HashMap<String, Object>();

				result.put("INTEREST_ID", langLv[0]);
				result.put("LEVEL_ID", langLv[1]);
				dao.insertTutorNeedTech(result);

			} else if (map.get("LANGLV_ID") instanceof String[])
			{
				String[] langLv = (String[]) map.get("LANGLV_ID");

				for (int i = 0; i < langLv.length; i++)
				{
					String[] interLevel = langLv[i].split(",");

					Map<String, Object> result = new HashMap<String, Object>();
					result.put("INTEREST_ID", interLevel[0]);
					result.put("LEVEL_ID", interLevel[1]);

					dao.insertTutorNeedTech(result);
				}
			}
			
			

		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}

	@Override
	public Map<String, Object> selectChoice()
	{
		Map<String, Object> resultMap = new HashMap<String, Object>();

		resultMap.put("selectRegion", dao.selectRegion());
		resultMap.put("selectInterest", dao.selectInterest());
		resultMap.put("selectLevel", dao.selectLevel());

		return resultMap;

	}

	@Override
	public int selectRegCount(Map<String, Object> map)
	{
		return dao.selectRegCount(map);
	}

	@Override
	public Map<String, Object> selectName(Map<String, Object> map)
	{
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		

		if (map.get("LANGLV_ID") instanceof String)
		{
			String[] langLv = ((String) map.get("LANGLV_ID")).split(",");

			resultMap.put("selectLangLvName", dao.selectInterestName(langLv[0]).get("INTEREST_CAT") + " - "
					+ dao.selectLevelName(langLv[1]).get("LEVEL_NAME"));
		} else if (map.get("LANGLV_ID") instanceof String[])
		{

			String[] langLv = (String[]) map.get("LANGLV_ID");

			String selectLangLvName = "";

			for (int i = 0; i < langLv.length; i++)
			{
				String[] div = langLv[i].split(",");

				selectLangLvName += dao.selectInterestName(div[0]).get("INTEREST_CAT") + " - "
						+ dao.selectLevelName(div[1]).get("LEVEL_NAME") + " / ";
			}

			selectLangLvName = selectLangLvName.substring(0, selectLangLvName.length() - 3);

			resultMap.put("selectLangLvName", selectLangLvName);

		}

		if (map.get("WEEK_NAME_ID") instanceof String)
		{
			String weekId = (String) map.get("WEEK_NAME_ID");

			resultMap.put("selectWeekName", dao.selectWeekName(weekId));

		} else if (map.get("WEEK_NAME_ID") instanceof String[])
		{

			String[] weekId = (String[]) map.get("WEEK_NAME_ID");

			String selectWeekName = "";

			for (int i = 0; i < weekId.length; i++)
			{
				selectWeekName += dao.selectWeekName(weekId[i]) + " , ";

			}

			selectWeekName = selectWeekName.substring(0, selectWeekName.length() - 3);

			resultMap.put("selectWeekName", selectWeekName);

		}

		if (map.get("question") instanceof String)
		{
			String question = (String) map.get("question");
			String answer = (String) map.get("answer");

			List<Map<String,Object>> result = new ArrayList<Map<String,Object>>();
			Map<String,Object> result1 = new HashMap<String,Object>();
			result1.put("FAQ_QUESTION", question);
			result1.put("FAQ_ANSWER", answer);	
			result.add(result1);
			
			resultMap.put("FAQ",result);
			
		} else if (map.get("question") instanceof String[])
		{

			String[] question = (String[]) map.get("question");
			String[] answer = (String[]) map.get("answer");
			
			List<Map<String,Object>> result = new ArrayList<Map<String,Object>>();
			
			for(int i=0;i<question.length;i++)
			{
				Map<String,Object> result1 = new HashMap<String,Object>();
				result1.put("FAQ_QUESTION", question);
				result1.put("FAQ_ANSWER", answer);
				result.add(result1);
			}
			
			resultMap.put("FAQ",result);

		

		

		}
		
		resultMap.put("regInfo", dao.selectRegionName(map));
		resultMap.put("selectTutorInfo", dao.selectTutorInfo(map));
		resultMap.put("selectTutorCareer", dao.selectTutorCareer(map));
		resultMap.put("selectTutorReview", dao.selectTutorReview(map));

		return resultMap;

	}

	public Map<String, Object> selectTutorName(Map<String, Object> map)
	{
		Map<String, Object> resultMap = new HashMap<String, Object>();

		resultMap.put("selectTutorName", dao.selectTutorName(map));

		return resultMap;
	}

}
