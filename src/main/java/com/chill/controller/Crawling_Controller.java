package com.chill.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chill.domain.CrawVO;
import com.chill.service.Crawling_Serivce;

@Controller
public class Crawling_Controller {
	
	@Autowired
	private Crawling_Serivce srv;
	
	@RequestMapping(value="/main.do")
	public void  crawling_Main(CrawVO vo,Model model) {
		model.addAttribute("CrawlingList", srv.CrawlingList(vo));
		model.addAttribute("store", srv.storeList(vo));
	}
	
	@RequestMapping(value="/Toplist.do")
	public String crawlingTopList(CrawVO vo,Model model) {
		model.addAttribute("Toplist",srv.CrawlingTopList(vo));
		return "01top";
	}
	@RequestMapping(value="/MainChill.do")
	public void mainpage() {
		
	}
}
