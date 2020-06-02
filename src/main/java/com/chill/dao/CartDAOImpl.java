package com.chill.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chill.domain.MemberVO;

	public interface CartDAOImpl implements CartDAO {
		@Autowired
		private SqlSessionTemplate mybatis;
		
		@Override
		public CartVO insert(MemberVO vo) {
			System.out.println("===> MemberMapper insert 호출");
			return mybatis.selectOne("user.insert", vo);
		}		
}
