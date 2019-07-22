package com.codering.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codering.service.TutorTutoringSearchService;
import com.codering.util.Pagination;

import codering.common.common.CommandMap;

@Controller
public class TutorTutoringSearchController
{
	private static final Logger log = LoggerFactory.getLogger(TutorTutoringSearchController.class);

	// 서비스 DI
	@Resource(name = "tutorTutoringSearchService")
	private TutorTutoringSearchService tutorTutoringSearchService;

	@RequestMapping(value = "/tutor_TutoringSearchList")
	public ModelAndView tutorTutoringSearchList(HttpServletRequest request, CommandMap commandMap) throws Exception
	{
		Map<String, Object> map = commandMap.getMap();
		log.info("commandMap : " + map);

		ModelAndView mav = new ModelAndView("Tutor_TutoringSearch");

		// 튜터 개설 인기 튜터링 찾기 목록 - TOP 3
		List<Map<String, Object>> list = tutorTutoringSearchService.selectTutorTutoringSearchList(request, map);
		mav.addObject("list", list);

		// Filter[
		List<Map<String, Object>> filterList1 = tutorTutoringSearchService.selectTutorTutoringFilterList1(request, map);
		mav.addObject("filterList1", filterList1);

		List<Map<String, Object>> filterList2 = tutorTutoringSearchService.selectTutorTutoringFilterList2(request, map);
		mav.addObject("filterList2", filterList2);

		List<Map<String, Object>> filterList3 = tutorTutoringSearchService.selectTutorTutoringFilterList3(request, map);
		mav.addObject("filterList3", filterList3);
		// Filter]

		map = getFilterParam(request, map);

		// 튜터의 튜터링 찾기 Paging[
		int curPageNo = request.getParameter("curPageNo") == null ? 1
				: Integer.parseInt(request.getParameter("curPageNo"));
		String pagingHTML = "";

		int list2Cnt = tutorTutoringSearchService.selectTutorTutoringSearchListCnt2(request, map);
		mav.addObject("list2Cnt", list2Cnt);

		Pagination pagination = new Pagination(curPageNo, list2Cnt);
		int rowNumStart = pagination.getRowNumStart();
		int rowNumEnd = pagination.getRowNumEnd();
		pagingHTML = pagination.pagingHTML();
		mav.addObject("pagingHTML", pagingHTML);

		map.put("rowNumStart", rowNumStart);
		map.put("rowNumEnd", rowNumEnd);

		// 튜터 개설 튜터링 찾기 목록
		List<Map<String, Object>> list2 = tutorTutoringSearchService.selectTutorTutoringSearchList2(request, map);
		mav.addObject("list2", list2);
		// Paging]

		return mav;
	}

	/**
	 * <pre>
	 * 필터링에서 사용되는 DB SQL용 파라미터 설정
	 * </pre>
	 * 
	 * @param request
	 * @param map
	 * @return Map<String, Object>
	 */
	private Map<String, Object> getFilterParam(HttpServletRequest request, Map<String, Object> map)
	{
		String SCH_REG_ID = request.getParameter("SCH_REG_ID") == null ? "" : request.getParameter("SCH_REG_ID");
		String SCH_INTEREST_ID = request.getParameter("SCH_INTEREST_ID") == null ? ""
				: request.getParameter("SCH_INTEREST_ID");
		String SCH_TIME = request.getParameter("SCH_TIME") == null ? "00:00" : request.getParameter("SCH_TIME");
		String SCH_ENTRY_COST = request.getParameter("SCH_ENTRY_COST") == null ? ""
				: request.getParameter("SCH_ENTRY_COST");
		String[] SCH_REG_ID_ARR = SCH_REG_ID.split(",");
		String[] SCH_INTEREST_ID_ARR = SCH_INTEREST_ID.split(",");

		if (SCH_REG_ID_ARR != null && !"".equals(SCH_REG_ID_ARR[0]))
		{
			map.put("SCH_REG_ID_ARR", SCH_REG_ID_ARR);
		}
		if (SCH_INTEREST_ID_ARR != null && !"".equals(SCH_INTEREST_ID_ARR[0]))
		{
			map.put("SCH_INTEREST_ID_ARR", SCH_INTEREST_ID_ARR);
		}
		map.put("SCH_TIME", SCH_TIME);
		map.put("SCH_ENTRY_COST", SCH_ENTRY_COST);
		request.setAttribute("SCH_TIME", SCH_TIME);
		request.setAttribute("SCH_ENTRY_COST", SCH_ENTRY_COST);

		return map;
	}
}