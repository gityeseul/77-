package com.crawling;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
public class Craw_BluePops {

	public static void main(String[] args) {

		String url = "https://bluepops.co.kr/category/swim-wear-top/638/"; //크롤링할 url지정
		Document doc = null;        //Document에는 페이지의 전체 소스가 저장된다
		Craw_DB db = null;
		ArrayList<CrawVO> list = null;
		CrawVO vo=null;
		try {
			doc = Jsoup.connect(url).get();
			db = new Craw_DB();
			vo=new CrawVO();
			
		} catch (Exception e) {
			System.out.println("크롤링 실패"+ e.getMessage());
		}
		//select를 이용하여 원하는 태그를 선택한다. select는 원하는 값을 가져오기 위한 중요한 기능이다.
		Elements element = doc.select(".xans-product-normalpackage .prdList");    
		System.out.println("============================================================");

		//Iterator을 사용하여 하나씩 값 가져오기
		//Iterator<Element> img = element.select("ul li img").iterator();
//		Iterator<Element> name = element.select(".description a span:nth-child(2)").iterator();
//	가격	Iterator<Element> ie1 = element.select("#span_product_tax_type_text").iterator();      
//		while (ie1.hasNext()) {
//			System.out.println(ie1.next().parent().child(1).html());
//		}
//	설명	Iterator<Element> ie1 = element.select(".xans-product-listitem li:nth-child(1)").iterator();      
//		while (ie1.hasNext()) {
//			System.out.println(ie1.next().child(1).text());
//		}
		Iterator<Element> temp = element.select(".prdList>li").iterator();
		int count=0;
		
		while (temp.hasNext()) {
			list = new ArrayList<CrawVO>();
			
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
				vo.setItem_size(null);
			}
			vo.setItem_image(data.select("img").attr("src"));
			vo.setItem_name(data.select(".description a span:nth-child(2)").text());
			
			String price = data.select(".description li:eq(2) span:nth-child(2)").text();
			String price1 = price.substring(0, price.length()-1);
			String price2 = price1.replaceAll(",", "");
			
			vo.setItem_price(Integer.parseInt(price2));
			vo.setItem_content(data.select(".xans-product-listitem li:nth-child(1)>span").text());
			
			if(data.select(".color .chips").size()==0) {

				list.add(vo);

			}else {

				for(int j=1; j<=data.select(".color .chips").size();j++) {
					
					CrawVO ref = new CrawVO();
					ref.setItem_content(vo.getItem_content());
					ref.setItem_image(vo.getItem_image());
					ref.setItem_name(vo.getItem_name());
					ref.setItem_price(vo.getItem_price());
					ref.setItem_size(vo.getItem_size());
					ref.setItem_color(data.select(".color .chips:nth-child("+j+")").attr("title"));

					list.add(ref);

				}
			}
			try {
				db.insertCrawling(list);
			} catch (Exception e) {
				System.out.println("DB실패"+e.getMessage());
			}

		}
		
		System.out.println("============================================================");
	}
}