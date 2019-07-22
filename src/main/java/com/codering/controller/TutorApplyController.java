package com.codering.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codering.service.TutorApplyService;

import codering.common.common.CommandMap;

@Controller
public class TutorApplyController {
	private static final Logger log = LoggerFactory.getLogger(TutorApplyController.class);

	// 서비스 DI
	@Resource(name = "tutorApplyService")
	private TutorApplyService tutorApplyService;

	// 튜터의 지원한 튜터링 목록
	@RequestMapping(value = "/tutor_ApplyList")
	public ModelAndView tutorApplyList(HttpServletRequest request, CommandMap commandMap) throws Exception {
		Map<String, Object> map = commandMap.getMap();
		log.info("commandMap : " + map);

		ModelAndView mav = new ModelAndView("tutorpage_Maching_apply");

		List<Map<String, Object>> list = tutorApplyService.selectTutorApplyList(request, map);

		mav.addObject("list", list);

		return mav;
	}
	
	@RequestMapping(value= "/tutor_ApplyStatus")
	@ResponseBody
	public void tutorApplyStatus(HttpServletRequest request, CommandMap commandMap, HttpServletResponse response) throws Exception {
		Map<String, Object> map = commandMap.getMap();
		log.info("commandMap : " + map);
		
		// 튜터의 지원한 튜터링 삭제 
		int result = tutorApplyService.deleteTutorApplyStatus(request, map);
		
		response.getWriter().print("");
		
		
	}
	
	// 대화 버튼 클릭시 튜터와 튜티장의 초대 게시판
	@RequestMapping(value="/tutor_ApplyBoard")
	public ModelAndView tutorApplyBoard(HttpServletRequest request, CommandMap commadMap) throws Exception {
		Map<String, Object> map = commadMap.getMap();
		log.info("commandMap : " + map);
		
		String APPLY_ID = (String) map.get("APPlY_ID");
		String MACH_LV_ID = (String) map.get("MACH_LV_ID");

		ModelAndView mav = new ModelAndView("tutorpage_Maching_apply2");

		List<Map<String, Object>> dialList = tutorApplyService.selectTutorApplyBoard(request, map);
			
		mav.addObject("LIST", dialList);
		
		return mav;
	}
	
	// 튜터의 메시지 지원 게시판에 등록
	@RequestMapping(value="/tutor_ApplyBoardMsg")
	public String tutorApplyBoardMsg(HttpServletRequest request, CommandMap commandMap, RedirectAttributes redirectAttributes) throws Exception { 
		Map<String, Object> map = commandMap.getMap();
		
		tutorApplyService.insertTutorApplyBoardMsg(request, map);
		
		String APPLY_ID = (String) map.get("APPLY_ID");
		redirectAttributes.addAttribute("APPLY_ID", APPLY_ID);
		String viewName = "redirect:/tutor_ApplyBoard";
		
		return viewName;

	}
}
