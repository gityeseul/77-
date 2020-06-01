package com.chill.model;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
public class Craw_Cocond {

	public static void main(String[] args) {

		String url = "http://cocond.com/product/list.html?cate_no=187&n_media=122875&n_query=%EB%B9%85%EC%82%AC%EC%9D%B4%EC%A6%88%EC%88%98%EC%98%81%EB%B3%B5&n_rank=6&n_ad_group=grp-a001-01-000000004975334&n_ad=nad-a001-01-000000093863545&n_keyword_id=nkw-a001-01-000002614395427&n_keyword=%EB%B9%85%EC%82%AC%EC%9D%B4%EC%A6%88%EC%88%98%EC%98%81%EB%B3%B5&n_campaign_type=1&NaPm=ct%3Dkarhqhbc%7Cci%3D0Au00029lb1s9uTv8vjd%7Ctr%3Dsa%7Chk%3D839bcd0ba7522c50ff9e5431aabd15b2eb62c31d"; //크롤링할 url지정
		Document doc = null;        //Document에는 페이지의 전체 소스가 저장된다

		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			System.out.println("크롤링 실패"+ e.getMessage());
		}
		//select를 이용하여 원하는 태그를 선택한다. select는 원하는 값을 가져오기 위한 중요한 기능이다.
		Elements element = doc.select(".xans-product-normalpackage");    

		System.out.println("============================================================");

		//Iterator을 사용하여 하나씩 값 가져오기
		//이미지 경로
//		Iterator<Element> img = element.select("ul li .link").iterator();
////		while (img.hasNext()) {
////		System.out.println(img.next().child(0).attr("src"));
////		}
//		
//		//이름
//		Iterator<Element> name = element.select(".description a span:nth-child(2)").iterator();
////		while (name.hasNext()) {
////		System.out.println(name.next().html());
////		}
//		
//		//가격
//		Iterator<Element> price = element.select("#span_product_tax_type_text").iterator();      
////		while (price.hasNext()) {
////			System.out.println(price.next().parent().child(1).html());
////		}
//
//		//설명
//		Iterator<Element> content = element.select(".simple_desc").iterator();      
//		int count=0;
//		while (img.hasNext()) {
//			count++;
//			System.out.println(count+"====================================");
//			System.out.println(img.next().child(0).attr("src"));
//			System.out.println(name.next().html());
//			System.out.println(price.next().parent().child(1).html());
//			//System.out.println(content.next().child(1).text());
//		}
		
		Iterator<Element> temp = element.select(".prdList>li").iterator();
		int count=0;
		while (temp.hasNext()) {
			count++;
			//System.out.println(count+":"+temp.next().attr("id"));
			Element data =temp.next();
			//System.out.println(count+":"+data.select(".link>img").attr("src"));
			//System.out.println(count+":"+data.select(".description a span:nth-child(2)").html());
			//System.out.println(count+":"+data.select(".product_price span:nth-child(2)").text());
			//System.out.println(count+":"+data.select(".simple_desc span:nth-child(2)").text());
			System.out.println(count+":"+data.select(".summary_desc span:nth-child(2)").text());
			
			
		}
		
		
		System.out.println("============================================================");
	}
}