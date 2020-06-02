package com.chill.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chill.domain.CartVO;
import com.chill.domain.MemberVO;

	public class CartDAOImpl implements CartDAO{
		@Autowired
		private SqlSessionTemplate mybatis;

		@Override
		public List<CartDAO> cartMoney() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public void insert(CartDAO dao) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public List<CartDAO> listCart(String userid) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public void delete(int cart_id) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void deleteAll(String userid) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void update(int cart_id) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public int sumMoney(String userid) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public void updateCart(CartDAO dto) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void modifyCart(CartDAO dto) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public CartVO insert(MemberVO vo) {
			// TODO Auto-generated method stub
			return null;
		}
		
	
}
