package com.chill.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.chill.dao.MemberDAO;
import com.chill.domain.MemberVO;
import com.chill.service.MemberService;

@Controller
public class MemberController {
	
	@RequestMapping("{url}.do")
	public String regist(@PathVariable String url) {
		return "/user/"+url;
	}	//webapp/resources/cozastore-master  + user/userJoin +url + .jsp
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("JoinForm")
	public String join() {
		return "/user/JoinForm";
	}
	
	@RequestMapping("/userInsert.do")
	public ModelAndView insert(MemberVO vo) {
		int result = memberService.userInsert(vo);
		String message = "가입되지 않았습니다";
		if (result == 1) message = vo.getName()+"님 가입 성공";
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/userJoin_ok");
		mv.addObject("message",message);
		mv.addObject("result",result);
		return mv;
	}
	
	@ResponseBody //********** 비동기통신
	@RequestMapping(value="/idCheck.do",produces= "application/text;charset=UTF-8")
	public String idcheck(MemberVO vo) {
		MemberVO result = memberService.idCheck_Login(vo);
		String message = "ID 사용가능합니다";
		if(result != null) message="중복된 ID가 있습니다";
		return message;
	}
	/*
		Spring에서 String을 리턴하면 뷰페이지 지정이 되어버림
		무조건 뷰페이지 지정되어서 화면이 변경됨 (페이지 전환됨)
	*/
	
	@RequestMapping(value="/login.do")
	public String login(MemberVO vo,HttpSession session) {
		MemberVO result = memberService.idCheck_Login(vo);
		if(result == null || result.getId() == null) {
			return "/user/userLogin";
		}else {
			session.setAttribute("sessionTime",new Date().toLocaleString());
			session.setAttribute("name",result.getName());
		}
		return "/user/Main";
	}
	
	
	
	
	
	
	
}
