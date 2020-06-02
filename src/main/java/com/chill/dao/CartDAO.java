package com.chill.dao;

import java.util.List;

import com.chill.domain.CartVO;

	public interface CartDAO {
		//1.장바구니 추가
	    List<CartDTO> cartMoney();
	    void insert(CartDAO dao); 
	    //2.장바구니 목록
	    List<CartDAO> listCart(String userid); 
	    //3.장바구니 개별 삭제
	    void delete(int cart_id);
	    //4.장바구니 비우기
	    void deleteAll(String userid); 
	    void update(int cart_id); 
	    //5.장바구니 금액 합계
	    int sumMoney(String userid); 
	    //6.장바구니 수정 
	    void updateCart(CartDTO dto); 
	    void modifyCart(CartDTO dto);
	    

}
