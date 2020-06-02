package com.chill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chill.dao.Crawling_Dao;
import com.chill.domain.CrawVO;

@Service
public class Crawling_Serivce {
	
	@Autowired
	private Crawling_Dao dao;
	
	public List<CrawVO> CrawlingList(CrawVO vo) {
		return dao.CrawlingList(vo);
	}
	public List<CrawVO> storeList(CrawVO vo){
		return dao.storeList(vo);
	}
	public List<CrawVO> CrawlingTopList(CrawVO vo){
		return dao.CrawlingTopList(vo);
	}
}
