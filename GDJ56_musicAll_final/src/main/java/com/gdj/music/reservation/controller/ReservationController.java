package com.gdj.music.reservation.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gdj.music.perfor.model.vo.Performance;
import com.gdj.music.reservation.model.service.ReservationService;


@Controller
@RequestMapping("/booking")
public class ReservationController {

	private ReservationService service;
	
	@Autowired
	public ReservationController(ReservationService service) {
		super();
		this.service = service;
	}

	//예매하기 화면
	@RequestMapping("/bookingview.do")
	public String bookingView(int mCode, Model model ) {
		
		List<Map<String,Performance>> p= service.selectPerform(mCode);
		model.addAttribute("performance",p);
		return "reservation/bookingView";
	}
	
	
	//좌석선택 화면
	@RequestMapping("/selectSeat.do")
	public String selectSeat() {
		
		return "/reservation/selectSeat";
	
	}
	
	//결제 화면
	@RequestMapping("pay.do")
	public String bookingpay() {
		
		return "/reservation/bookingPay";
	}
	
}
