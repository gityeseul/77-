package com.chill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chill.domain.CrawVO;
import com.chill.service.Crawling_Serivce;

@Controller
@RequestMapping(value="/crawling")
public class Crawling_Controller {
	
	@Autowired
	private Crawling_Serivce srv;
	
	@RequestMapping(value="/main.do")
	public void  crawling_Main(CrawVO vo,Model model) {
		model.addAttribute("CrawlingList", srv.CrawlingList(vo));
		model.addAttribute("store", srv.storeList(vo));
	}
}
