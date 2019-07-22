package com.codering.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codering.service.TuteeMypageService;

import codering.common.common.CommandMap;

@Controller
public class TuteeMypageController
{
	@Autowired
	private TuteeMypageService service;

	// 진행 중 튜터링 리스트
	@RequestMapping(value = "/mypage_tuteeing")
	public ModelAndView ingList(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeIng");

		mav.addObject("ingList", service.selectIngList(commandMap.getMap()));

		return mav;

	}

	// 이전 튜터링 리스트
	@RequestMapping(value = "/mypage_tuteebefore")
	public ModelAndView beforeList(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeBefore");

		mav.addObject("beforeList", service.selectBeforeList(commandMap.getMap()));

		return mav;

	}

	// 예정 튜터링 리스트
	@RequestMapping(value = "/mypage_tuteeafter")
	public ModelAndView afterList(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeAfter");

		mav.addObject("afterList", service.selectAftereList(commandMap.getMap()));

		return mav;

	}

	// 진행 중 튜터링 일정정보
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/mypage_ing_schedule")
	public ModelAndView ingSchedule(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeIng_schedule");

		Map<String, Object> result = service.selectschedule(commandMap.getMap());

		Map<String, Object> detail = (Map<String, Object>) result.get("detail");
		List<Map<String, Object>> schedule = (List<Map<String, Object>>) result.get("schedule");

		mav.addObject("detail", detail);
		mav.addObject("schedule", schedule);

		return mav;

	}

	// 이전 튜터링 일정정보
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/mypage_before_schedule")
	public ModelAndView beforeSchedule(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeBefore_schedule");

		Map<String, Object> result = service.selectschedule(commandMap.getMap());

		Map<String, Object> detail = (Map<String, Object>) result.get("detail");
		List<Map<String, Object>> schedule = (List<Map<String, Object>>) result.get("schedule");

		mav.addObject("detail", detail);
		mav.addObject("schedule", schedule);

		return mav;

	}

	// 이전 튜터링 후기
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/mypage_before_review")
	public ModelAndView beforeReview(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeBefore_review");

		Map<String, Object> result = service.selectmyReview(commandMap.getMap());

		Map<String, Object> detail = (Map<String, Object>) result.get("detail");
		Map<String, Object> review = (Map<String, Object>) result.get("review");

		mav.addObject("detail", detail);
		mav.addObject("review", review);

		return mav;

	}

	// 후기 입력
	@RequestMapping(value = "/mypage_insert_review")
	public ModelAndView insertReview(CommandMap commanMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/mypage_before_review");

		service.insertReview(commanMap.getMap());

		return mav;
	}

	// 예약 튜터링 리스트
	@RequestMapping(value = "/mypage_tuteereserve")
	public ModelAndView reserveList(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeReserve");

		mav.addObject("reserveList", service.selectreserveList(commandMap.getMap()));

		return mav;

	}

	// 예약 튜터링 취소하기
	@RequestMapping(value = "/mypage_reservecancel")
	public ModelAndView deleteReserve(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/mypage_tuteereserve");

		service.deleteReserve(commandMap.getMap());

		return mav;

	}

	// 진행중 튜터링 중도포기하기
	@RequestMapping(value = "/mypage_ing_tuteedrop")
	public ModelAndView insertIngTuteeDrop(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/mypage_tuteeing");

		service.inserttuteedrop(commandMap.getMap());

		return mav;

	}

	// 예정튜터링 중도포기하기
	@RequestMapping(value = "/mypage_after_tuteedrop")
	public ModelAndView insertAfterTuteeDrop(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("redirect:/mypage_tuteeafter");

		service.inserttuteedrop(commandMap.getMap());

		return mav;

	}

	// 찜한 튜터링 리스트
	@RequestMapping(value = "/mypage_pick")
	public ModelAndView selectpickList(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteePick");

		mav.addObject("pickList", service.selectpickList(commandMap.getMap()));

		return mav;

	}

}
