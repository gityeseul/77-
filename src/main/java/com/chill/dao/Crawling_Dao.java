package com.chill.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chill.domain.*;

@Repository
public class Crawling_Dao {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<CrawVO> CrawlingList() {
		return mybatis.selectList("CrawlingDao.selectList");
	}
}
