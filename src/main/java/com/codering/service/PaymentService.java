package com.codering.service;

import java.util.Map;

public interface PaymentService
{
	public Map<String, Object> selectTutoringTutor(Map<String,Object> map);
	
	public int selectTuteeAuth(Map<String,Object> map);
	
	public int selectCouponCount(Map<String,Object> map);
	
	public Map<String, Object> selectCoupon(Map<String,Object> map);
	
	public void deleteCoupon(Map<String,Object> map);
	
	public void insertTutoringEnroll(Map<String,Object> map);
}
