package com.codering.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codering.service.TutorService;

import codering.common.common.CommandMap;

@Controller
public class TutorController
{
	@Autowired
	private TutorService service;

	// 진행중 튜터링 리스트
	@RequestMapping(value = "/tutor_tutorpage_tutoring")
	public ModelAndView tutorIngList(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorIng");

		mav.addObject("inglist", service.selectTutorIngList(commandMap.getMap()));

		return mav;

	}

	// 이전 튜터링 리스트
	@RequestMapping(value = "/tutor_tutorpage_tutorbefore")
	public ModelAndView tutorbeforeList(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorBefore");

		// commandMap.put("TUTOR_ID", "1");
		/* commandMap.put("TUTORING_TUTOR_ID", "7"); */
		/* commandMap.put("TUTORING_TUTOR_ID", "8"); */

		mav.addObject("beforeList", service.selectTutorBeforeList(commandMap.getMap()));

		return mav;

	}

	// 모집중 튜터링 리스트
	@RequestMapping(value = "/tutor_tutorpage_tutorrecruiting")
	public ModelAndView tutorrecruitingList(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorRecruiting");

		// commandMap.put("TUTOR_ID", "1");
		/* commandMap.put("TUTORING_TUTOR_ID", "7"); */
		/* commandMap.put("TUTORING_TUTOR_ID", "8"); */

		mav.addObject("recruitingList", service.selectTutorRecruitingList(commandMap.getMap()));

		return mav;

	}

	// 진행중 튜터링 > 상세정보
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/tutor_tutorpage_tutoring_detail")
	public ModelAndView tutoringdetail(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorIng_detail");

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "1");
		/* commandMap.put("MEMBER_ID", "1"); */

		Map<String, Object> result = service.selectTutorDetail(commandMap.getMap());

		List<Map<String, Object>> detail = (List<Map<String, Object>>) result.get("detail");
		List<Map<String, Object>> tutorinfo = (List<Map<String, Object>>) result.get("tutorinfo");
		List<Map<String, Object>> faq = (List<Map<String, Object>>) result.get("faq");
		Map<String, Object> review = (Map<String, Object>) result.get("review");

		mav.addObject("detail", detail);
		mav.addObject("tutorinfo", tutorinfo);
		mav.addObject("faq", faq);
		mav.addObject("review", review);

		return mav;
	}

	// 이전 튜터링 > 상세정보
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/tutor_tutorpage_tutorbefore_detail")
	public ModelAndView tutorbeforedetail(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorBefore_detail");

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "11");
		/* commandMap.put("MEMBER_ID", "1"); */

		Map<String, Object> result = service.selectTutorDetail(commandMap.getMap());

		List<Map<String, Object>> detail = (List<Map<String, Object>>) result.get("detail");
		List<Map<String, Object>> tutorinfo = (List<Map<String, Object>>) result.get("tutorinfo");
		List<Map<String, Object>> faq = (List<Map<String, Object>>) result.get("faq");
		Map<String, Object> review = (Map<String, Object>) result.get("review");

		mav.addObject("detail", detail);
		mav.addObject("tutorinfo", tutorinfo);
		mav.addObject("faq", faq);
		mav.addObject("review", review);

		return mav;
	}

	// 모집중 튜터링 > 상세정보
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/tutor_tutorpage_tutorrecruiting_detail")
	public ModelAndView tutorrecruitingdetail(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorRecruiting_detail");

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "12");
		/* commandMap.put("MEMBER_ID", "1"); */

		Map<String, Object> result = service.selectTutorDetail(commandMap.getMap());

		List<Map<String, Object>> detail = (List<Map<String, Object>>) result.get("detail");
		List<Map<String, Object>> tutorinfo = (List<Map<String, Object>>) result.get("tutorinfo");
		List<Map<String, Object>> faq = (List<Map<String, Object>>) result.get("faq");
		Map<String, Object> review = (Map<String, Object>) result.get("review");

		mav.addObject("detail", detail);
		mav.addObject("tutorinfo", tutorinfo);
		mav.addObject("faq", faq);
		mav.addObject("review", review);

		return mav;
	}

	// 진행중 튜터링 폐강
	@RequestMapping(value = "/tutor_tutorpage_tutoring_drop")
	public ModelAndView updateTutoringDrop(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/tutor_tutorpage_tutoring");

		// commandMap.put("TUTOR_ID", "1");

		service.updateTutoringDrop(commandMap.getMap());

		return mav;
	}

	// 모집중 튜터링 폐강
	@RequestMapping(value = "/tutor_tutorpage_tutorrecruiting_drop")
	public ModelAndView updateRecruitinggDrop(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/tutor_tutorpage_tutorrecruiting");

		// commandMap.put("TUTOR_ID", "1");

		service.updateTutoringDrop(commandMap.getMap());

		return mav;
	}

	// 빼기
	// 진행중 튜터링 문의 삭제
	@RequestMapping(value = "/tutor_tutorpage_tutoring_deletefaq")
	public ModelAndView ingDeleteFaq(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/tutor_tutorpage_tutoring_detail");

		commandMap.put("TUTOR_ID", "1");
		commandMap.put("TUTORING_TUTOR_ID", "1");

		service.deletefaq(commandMap.getMap());

		return mav;
	}

	// 빼기
	// 모집 중 튜터링 문의 삭제
	@RequestMapping(value = "/tutor_tutorpage_tutorrecruiting_deletefaq")
	public ModelAndView recDeleteFaq(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/tutor_tutorpage_tutorrecruiting_detail");

		commandMap.put("TUTOR_ID", "1");
		commandMap.put("TUTORING_TUTOR_ID", "12");

		service.deletefaq(commandMap.getMap());

		return mav;
	}

	// 진행중 튜터링 > 튜티관리
	@RequestMapping(value = "/tutor_tutorpage_tutoring_tuteemanage")
	public ModelAndView tutorIngTuteemanage(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorIng_manageTutee");

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "1");
		/* commandMap.put("TUTORING_TUTOR_ID", "8"); */

		mav.addObject("tuteemanage", service.selectTuteeManage(commandMap.getMap()));
		mav.addObject("tutorprof", service.selectTutorProf(commandMap.getMap()));

		return mav;

	}

	// 진행 중 튜터링 > 튜티관리 > 튜티평가입력
	@RequestMapping(value = "/tutor_tutorpage_tutoring_tuteemanage_tuteereview")
	public ModelAndView tutorIngInsertTuteeReview(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/tutor_tutorpage_tutoring_tuteemanage?TUTORING_TUTOR_ID="+ commandMap.get("TUTORING_TUTOR_ID"));

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "1");

		service.insertTuteeReview(commandMap.getMap());

		return mav;
	}

	// 진행중 튜터링 > 튜티관리 > 튜티강퇴
	@RequestMapping(value = "/tutor_tutorpage_tutoring_tuteemanage_tutordrop")
	public ModelAndView tutorIngTutorDrop(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/tutor_tutorpage_tutoring_tuteemanage?&TUTORING_TUTOR_ID="
				+ commandMap.get("TUTORING_TUTOR_ID"));

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "1");

		service.insertTutorDrop(commandMap.getMap());

		return mav;
	}

	// 진행중 튜터링 > 튜티관리 > 튜티중도포기 승인 버튼
	@RequestMapping(value = "/tutor_tutorpage_tutoring_tuteemanage_tuteedrop")
	public ModelAndView tutorIngTuteeDrop(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/tutor_tutorpage_tutoring_tuteemanage?TUTORING_TUTOR_ID="
				+ commandMap.get("TUTORING_TUTOR_ID"));

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "1");

		service.updateTuteeDrop(commandMap.getMap());

		return mav;
	}

	// 모집중 튜터링 > 튜티관리
	@RequestMapping(value = "/tutor_tutorpage_tutorrecruiting_tuteemanage")
	public ModelAndView tutorRecruitingTuteemanage(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorRecruiting_manageTutee");

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "12");
		/* commandMap.put("TUTORING_TUTOR_ID", "8"); */

		mav.addObject("tuteemanage", service.selectTuteeManage(commandMap.getMap()));
		mav.addObject("tutorprof", service.selectTutorProf(commandMap.getMap()));

		return mav;

	}

	// 모집중 튜터링 > 튜티관리 > 튜티강퇴
	@RequestMapping(value = "/tutor_tutorpage_tutorecruiting_tuteemanage_tutordrop")
	public ModelAndView tutorRecruitingTutorDrop(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/tutor_tutorpage_tutorrecruiting_tuteemanage?&TUTORING_TUTOR_ID="
				+ commandMap.get("TUTORING_TUTOR_ID"));

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "12");

		service.insertTutorDrop(commandMap.getMap());

		return mav;
	}

	// 이전 튜터링 > 튜티관리
	@RequestMapping(value = "/tutor_tutorpage_tutorbefore_tuteemanage")
	public ModelAndView tutorBeforeTuteemanage(CommandMap commandMap, HttpSession session)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorBefore_manageTutee");

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "10");
		/* commandMap.put("TUTORING_TUTOR_ID", "8"); */

		mav.addObject("tuteemanage", service.selectTuteeManage(commandMap.getMap()));
		mav.addObject("tutorprof", service.selectTutorProf(commandMap.getMap()));

		return mav;

	}

	// 이전 튜터링 > 튜티관리 > 튜티평가입력
	@RequestMapping(value = "/tutor_tutorpage_tutorbefore_tuteemanage_tuteereview")
	public ModelAndView tutorBeforeInsertTuteeReview(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/tutor_tutorpage_tutorbefore_tuteemanage?TUTORING_TUTOR_ID="
				+ commandMap.get("TUTORING_TUTOR_ID"));

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "10");

		service.insertTuteeReview(commandMap.getMap());

		return mav;
	}

	// 진행 중 튜터링 > 일정관리
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/tutor_tutorpage_tutoring_schedule")
	public ModelAndView tutorIngSchedule(CommandMap commandMap, HttpSession session)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorIng_schedule");

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "1");
		/* commandMap.put("TUTORING_TUTOR_ID", "8"); */

		Map<String, Object> result = service.selectScheduleList(commandMap.getMap());

		List<Map<String, Object>> detail = (List<Map<String, Object>>) result.get("detail");
		List<Map<String, Object>> schedule = (List<Map<String, Object>>) result.get("schedule");
		Map<String, Object> tutorprof = (Map<String, Object>) result.get("tutorprof");

		mav.addObject("detail", detail);
		mav.addObject("schedule", schedule);
		mav.addObject("tutorprof", tutorprof);

		return mav;

	}

	// 이전 튜터링 > 일정관리
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/tutor_tutorpage_tutorbefore_schedule")
	public ModelAndView tutorBeforeSchedule(CommandMap commandMap, HttpSession session)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorBefore_schedule");

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "10");
		/* commandMap.put("TUTORING_TUTOR_ID", "8"); */

		Map<String, Object> result = service.selectScheduleList(commandMap.getMap());

		List<Map<String, Object>> detail = (List<Map<String, Object>>) result.get("detail");
		List<Map<String, Object>> schedule = (List<Map<String, Object>>) result.get("schedule");
		Map<String, Object> tutorprof = (Map<String, Object>) result.get("tutorprof");

		mav.addObject("detail", detail);
		mav.addObject("schedule", schedule);
		mav.addObject("tutorprof", tutorprof);

		return mav;

	}

	// 진행 중 튜터링 > 일정 관리 입력
	@RequestMapping(value = "/tutor_ing_schedule_insert")
	public ModelAndView ingSchInsert(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView(
				"redirect:/tutor_tutorpage_tutoring_schedule?TUTORING_TUTOR_ID=" + commandMap.get("TUTORING_TUTOR_ID"));

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "1");

		service.insertSchedule(commandMap.getMap());

		return mav;
	}

	// 진행 중 일정관리 수정
	@RequestMapping(value = "/tutor_ing_schedule_update")
	public ModelAndView updateForm(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView(
				"redirect:/tutor_tutorpage_tutoring_schedule?TUTORING_TUTOR_ID=" + commandMap.get("TUTORING_TUTOR_ID"));

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "1");

		service.updateSchedule(commandMap.getMap());

		return mav;
	}

	// 리뷰(후기) 리스트
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/tutor_tutorpage_tutorbefore_review")
	public ModelAndView selectreviewList(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_tutorBefore_review");

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "1");
		/* commandMap.put("TUTORING_TUTOR_ID", "8"); */

		Map<String, Object> result = service.selectreviewList(commandMap.getMap());

		List<Map<String, Object>> detail = (List<Map<String, Object>>) result.get("detail");
		List<Map<String, Object>> review = (List<Map<String, Object>>) result.get("review");
		Map<String, Object> tutorprof = (Map<String, Object>) result.get("tutorprof");

		mav.addObject("detail", detail);
		mav.addObject("review", review);
		mav.addObject("tutorprof", tutorprof);

		return mav;

	}

	// 문의 관리 리스트
	@RequestMapping(value = "/tutor_tutorpage_qna_list")
	public ModelAndView selectfaqList(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_qna_list");

		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "1");

		mav.addObject("faqList", service.selectQnaList(commandMap.getMap()));

		return mav;
	}

	// 문의 관리 상세페이지
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/tutor_tutorpage_qna_answer")
	public ModelAndView selectQnaDetail(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_qna_answer");

		/* commandMap.put("FAQ_ID", "41"); */

		Map<String, Object> result = service.selectQnaDetail(commandMap.getMap());

		Map<String, Object> qnaQ = (Map<String, Object>) result.get("qnaQ");
		Map<String, Object> qnaA = (Map<String, Object>) result.get("qnaA");

		mav.addObject("qnaQ", qnaQ);
		mav.addObject("qnaA", qnaA);

		return mav;
	}

	// 문의 관리 답변 입력
	@RequestMapping(value = "/tutor_tutorpage_qna_insert")
	public ModelAndView insertqnaA(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/tutor_tutorpage_qna_answer?FAQ_ID=" + commandMap.get("FAQ_ID"));

		service.insertqnaA(commandMap.getMap());

		return mav;
	}
	
	// 문의 관리 답변 수정폼
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/tutor_tutorpage_qna_answer_modifyform")
	public ModelAndView selectQnaForm(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("tutorpage_qna_answer_modify");

		//commandMap.put("FAQ_ID", "71"); 

		Map<String, Object> result = service.selectQnaDetail(commandMap.getMap());

		Map<String, Object> qnaQ = (Map<String, Object>) result.get("qnaQ");
		Map<String, Object> qnaA = (Map<String, Object>) result.get("qnaA");

		mav.addObject("qnaQ", qnaQ);
		mav.addObject("qnaA", qnaA);

		return mav;
	}
	
	
	// 문의 관리 답변 수정
	@RequestMapping(value = "/tutor_tutorpage_qna_update")
	public ModelAndView updateQnaA(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/tutor_tutorpage_qna_answer?FAQ_ID=" + commandMap.get("FAQ_ID"));

		service.updateQnaA(commandMap.getMap());

		return mav;

	}
	
	// 튜터  프로필 후기
	@RequestMapping(value = "/profile_tutor_review")
	public ModelAndView selecttutorprofilereview(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("Tutor_profile_review");

		mav.addObject("review", service.selecttutorprofilereview(commandMap.getMap()));
		
		commandMap.put("TUTOR_ID", "1"); 

		return mav;

	}
	
	

}
