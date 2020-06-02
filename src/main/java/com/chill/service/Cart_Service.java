package com.chill.service;
import java.util.List;

import com.chill.dao.CartDAO;
import com.chill.domain.CartVO;

public interface Cart_Service {
	//1.장바구니 추가
    List<CartDAO> cartMoney();
    public void insert(CartDAO dao); 
    //2.장바구니 개별 삭제
    public void delete(int cart_id);
    //3.장바구니 비우기
    public void deleteAll(String userid); 
    //4.장바구니 금액 합계
    int sumMoney(String userid); 
    //5.장바구니 수정 
    public void updateCart(CartDAO dao); 
    public List<CartDAO> listCart(String userid);
}

