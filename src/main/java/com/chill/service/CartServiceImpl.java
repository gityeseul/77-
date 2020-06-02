package com.chill.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chill.dao.CartDAO;
import com.chill.domain.CartVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import java.util.List;

import javax.inject.Inject;
	 
	@Repository
	public class CartServiceImpl implements Cart_Service {
	    @Inject
	    SqlSession sqlSession;
	    @Override
	    public List<CartDAO> cartMoney() {
	        // TODO Auto-generated method stub
	        return null;}
	    //장바구니에 담기
	    @Override
	    public void insert(CartDAO dto) {
	    //dto에 저장된 값을 받아서 sql세션에 저장하고 cart.insert로 넘어감 mapper로.
	        sqlSession.insert("cart.insert", dto); 
	    }
	    @Override
	    public List<CartDAO> listCart(String userid) {
	        return sqlSession.selectList("cart.listCart", userid);
	    }
	    @Override
	    public void delete(int cart_id) {
	        sqlSession.delete("cart.delete", cart_id);
	    }
	    @Override
	    public void deleteAll(String userid) {
	        sqlSession.delete("cart.deleteAll", userid);
	    }
	    @Override
	    public int sumMoney(String userid) {
	        return sqlSession.selectOne("cart.sumMoney", userid); 
	    }
		@Override
		public void updateCart(CartDAO dao) {
			// TODO Auto-generated method stub
			
		}
}