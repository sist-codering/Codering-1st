package com.codering.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codering.dao.PaymentDAO;

@Service("PaymentService")
public class PaymentServiceImpl implements PaymentService
{

	@Autowired
	private PaymentDAO dao;
	
	@Override
	public Map<String, Object> selectTutoringTutor(Map<String, Object> map)
	{
		Map<String,Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("selectTutoringTutee",dao.selectTutoringTutor(map));
		
		return resultMap;
	}

	@Override
	public int selectTuteeAuth(Map<String, Object> map)
	{
		return dao.selectTuteeAuth(map);
	}

	@Override
	public int selectCouponCount(Map<String, Object> map)
	{
		return dao.selectCouponCount(map);
	}

	@Override
	public Map<String, Object> selectCoupon(Map<String, Object> map)
	{
		Map<String,Object> resultMap = new HashMap<String,Object>();
		
		resultMap.put("selectCoupon", dao.selectCoupon(map));
		
		return resultMap;
	}

	@Override
	public void deleteCoupon(Map<String, Object> map)
	{
		try
		{
			dao.deleteCoupon(map);
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
	}

	@Override
	public void insertTutoringEnroll(Map<String, Object> map)
	{
		try
		{
			dao.insertTutoringEnroll(map);
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}
	
}
