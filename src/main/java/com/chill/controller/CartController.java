package com.chill.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chill.domain.BoardVO;
import com.chill.service.BoardService;


/*@Controller
  @RequestMapping("/board")
 * public class CartController { 
 * //1.장바구니 추가
 * List<CartDAO> cartMoney(); 
 * public void insert(CartDTO dao);
 * //2.장바구니 목록
 * List<CartDAO> listCart(int product_id);
 * //3.장바구니 개별 삭제 
 * public void delete(int cart_id); 
 * //4.장바구니 비우기
 * public void deleteAll(String userid);
 * //5.장바구니 금액 합계 
 * int sumMoney(String userid); }
 */
@Controller
@RequestMapping("/")
@SessionAttributes({"cart"})
public class HomeController {	
	
//1.세션에 저장되어 있는 cart값 호출
	@ResponseBody
	@RequestMapping(value = "main/resources/shoping-cart", method = RequestMethod.POST)
	public void addCart(CartListVO cart, HttpSession session) throws Exception {
	 
	CartVO cartvo = (CartVO)session.getAttribute("cartvo");
	 cart.setItem_id(cartvo.getItem_id());
	 service.addCart(cart);
	}

/*
 * @Controller public class CartController {
 * 
 * @RequestMapping("listCart.do") public String
 * listCart(@ModelAttribute("cartVO") CartVO searchVO) throws Exception { CartVO
 * cartVO = new CartVO();
 * cartVO.setMberNo(EgovUserUtil.getMemberInfo().getMemberNo());
 * 
 * List cartList = egovCartService.selectCartList(cartVO);
 * model.addAttribute("resultList", cartList); MemberVO loginVO =
 * EgovUserUtil.getMemberInfo(); model.addAttribute("loginVO", loginVO);
 * 
 * return "pcs/EgovCartList"; }
 * 
 * @RequestMapping("/pcs/insertCart.do") public String insertCart(
 * 
 * @RequestParam("selectedId") String goodsId,
 * 
 * @RequestParam("qy") int qy,
 * 
 * @ModelAttribute("searchVO") SearchVO searchVO,Model model) throws Exception {
 * CartVO cartVO = new CartVO(); GoodsVO goodsVO = new GoodsVO();
 * 
 * goodsVO.setGoodsId(goodsId); cartVO.setGoodsVO(goodsVO);
 * 
 * MemberVO memberVO=EgovUserUtil.getMemberInfo();
 * cartVO.setMberNo(memberVO.getMemberNo()); cartVO.setQy(qy);
 * 
 * egovCartService.insertCart(cartVO); return "redirect:/pcs/selectListCart.do";
 * }
 * 
 * 
 * @RequestMapping("/pcs/deleteCart.do") public String
 * deleteCart(@RequestParam("cart_col_check[]") String[] ckd) throws Exception {
 * egovCartService.deleteCart(ckd); return "redirect:/pcs/selectListCart.do"; }
 * 
 * 
 * @RequestMapping("/pcs/purchaseFromCart.do") public String
 * insertPurchaseFromCart(
 * 
 * @RequestParam("cart_col_check[]") String[] ckd) throws Exception {
 * egovPurchaseService.insertPurchaseFromCart(ckd); return
 * "redirect:/dlv/selectListPurchase.do"; }
 * 
 * @RequestMapping("/pcs/Purchase.do") public String insertPurchase(
 * 
 * @RequestParam("selectedId") String goodsId,
 * 
 * @RequestParam("qy") int qy,
 * 
 * @ModelAttribute("searchVO") SearchVO searchVO,Model model) throws Exception {
 * PurchaseVO purchaseVO = new PurchaseVO(); GoodsVO goodsVO = new GoodsVO();
 * goodsVO.setGoodsId(goodsId);
 * 
 * purchaseVO.setGoodsVO(goodsVO);
 * 
 * MemberVO memberVO=EgovUserUtil.getMemberInfo();
 * purchaseVO.setMberNo(memberVO.getMemberNo()); purchaseVO.setQy(qy);
 * egovPurchaseService.insertPurchase(purchaseVO);
 * 
 * return "redirect:/dlv/selectListPurchase.do"; }
 */

