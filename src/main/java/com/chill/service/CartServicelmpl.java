package com.chill.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chill.domain.CartVO;

@Service("cart_Serivce")
public class CartServicelmp implements Cart_Serivce {
	
	import java.util.List;
	 
	import javax.inject.Inject;
	 
	import org.apache.ibatis.session.SqlSession;
	import org.springframework.stereotype.Repository;
	 
	import com.example.spring02.model.shop.dto.CartDTO;
	 
	@Repository
	public class CartDAOImpl implements CartDAO {
	    @Inject
	    SqlSession sqlSession;
	    @Override
	    public List<CartDTO> cartMoney() {
	        // TODO Auto-generated method stub
	        return null;}
	    //장바구니에 담기
	    @Override
	    public void insert(CartDTO dto) {
	    //dto에 저장된 값을 받아서 sql세션에 저장하고 cart.insert로 넘어감 mapper로.
	        sqlSession.insert("cart.insert", dto); 
	    }
	    @Override
	    public List<CartDTO> listCart(String userid) {
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
}