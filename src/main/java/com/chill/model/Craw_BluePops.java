	package com.chill.model;
	
	import java.util.ArrayList;
	import java.util.Iterator;
	
	import org.jsoup.Jsoup;
	import org.jsoup.nodes.Document;
	import org.jsoup.nodes.Element;
	import org.jsoup.select.Elements;
	
	import com.chill.domain.CrawVO;
	
public class Craw_BluePops {
		
		
	String url = "https://bluepops.co.kr/category/swim-wear-top/638/"; //크롤링할 url지정
	Document doc;        //Document에는 페이지의 전체 소스가 저장된다
	
	//DB 보내기 위한 리스트
	ArrayList<CrawVO> list;
	CrawVO vo;
	public Craw_BluePops() {
		
		try {
			doc = Jsoup.connect(url).get();
			
			
		} catch (Exception e) {
			System.out.println("크롤링 실패"+ e.getMessage());
		}
		//select를 이용하여 원하는 태그를 선택한다. select는 원하는 값을 가져오기 위한 중요한 기능이다.
		Elements element = doc.select(".xans-product-normalpackage .prdList");    
		
		System.out.println("============================================================");
	
		//리스트처럼 Iterator에 셀렉트한 대상 저장
		Iterator<Element> temp = element.select(".prdList>li").iterator();
		int count=0;
		
		
		while (temp.hasNext()) {
			list = new ArrayList<CrawVO>();
			vo=new CrawVO();
			Element data =temp.next();
		
			count++;
			//이미지
			System.out.println(count+":"+data.select("img").attr("src"));	
			//이름
			System.out.println(count+":"+data.select(".description a span:nth-child(2)").text());	
			//가격
			System.out.println(count+":"+data.select(".description li:eq(2) span:nth-child(2)").text());	
			//설명
			System.out.println(count+":"+data.select(".xans-product-listitem li:nth-child(1)>span").text());	
			
			//색상
			for(int i=1; i<=data.select(".color .chips").size();i++) {
			System.out.println(count+":"+data.select(".color .chips:nth-child("+i+")").attr("title"));	
			}
			
			//사이즈
			if(!data.select(".description li:nth-child(2) span:nth-child(2)").text().contains("원")) {
			System.out.println(count+":"+data.select(".description li:nth-child(2) span:nth-child(2)").text());	//사이즈
			vo.setItem_size(data.select(".description li:nth-child(2) span:nth-child(2)").text());
			}
			else {
				//색상이 없을 경우 
				vo.setItem_size(null);
			}
			vo.setItem_image(data.select("img").attr("src"));
			vo.setItem_name(data.select(".description a span:nth-child(2)").text());
			
			//가격의 마지막에 포함된 "원"을 제거하고 중간에 "," 제거해서 정수형으로 변환한다.
			String price = data.select(".description li:eq(2) span:nth-child(2)").text();
			String price1 = price.substring(0, price.length()-1);
			String price2 = price1.replaceAll(",", "");
			vo.setItem_price(Integer.parseInt(price2));
			vo.setItem_content(data.select(".xans-product-listitem li:nth-child(1)>span").text());
			
			//컬러가 없을 경우 리스트에 바로 vo를 저장
			if(data.select(".color .chips").size()==0) {
			
				list.add(vo);
			
			}
			//컬러가 있을 경우 컬러 하나당 vo 하나를 생성해서 list에 각각 저장 한다.
			else {	
				for(int j=1; j<=data.select(".color .chips").size();j++) {
					CrawVO ref = new CrawVO();
					//새로운 vo ref를 만들고 기존의 vo값을 불러온후 색상값을 더해준다.
					ref.setItem_content(vo.getItem_content());
					ref.setItem_image(vo.getItem_image());
					ref.setItem_name(vo.getItem_name());
					ref.setItem_price(vo.getItem_price());
					ref.setItem_size(vo.getItem_size());
					ref.setItem_color(data.select(".color .chips:nth-child("+j+")").attr("title"));
			
					list.add(ref);
				}
			}
		}
	}
}