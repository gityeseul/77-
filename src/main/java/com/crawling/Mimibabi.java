package com.crawling;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
public class Mimibabi {

	public static void main(String[] args) {

		String url = "http://mimibabi.com/product/list.html?cate_no=81";
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
			ArrayList<CrawVO> list = new ArrayList<CrawVO>();
			count++;
			Element data =temp.next();
			//이미지 링크
			String itemImg_link=data.select(".prdImg img").attr("src");
			//이름
			String itemName=data.select(".description a span:nth-child(2)").html();
			//가격
			String price=data.select(".description li:eq(0) span:nth-child(2)").text().replaceAll(",","");
			String itemPrice = price.substring(0,price.length()-1);

			//설명
			String itemContent=data.select(".description li:eq(3) span:nth-child(2)").text();
			//사이즈
			String itemSize=data.select(".description li:eq(1) span:nth-child(2)").text();


			//색상

			for(int i=1; i<=data.select(".color .chips").size();i++) {
				CrawVO vo = new CrawVO();
				vo.setItem_size(itemSize);
				vo.setItem_price(Integer.parseInt(itemPrice));
				vo.setItem_name(itemName);
				vo.setItem_image(itemImg_link);
				vo.setItem_content(itemContent);
				if(i!=0) {
					String color = data.select(".color .chips:nth-child("+i+")").attr("title");
					vo.setItem_color(color);
				}
				
				list.add(vo);
			}
			try {
				Craw_DB db = new Craw_DB();
				db.insertCrawling(list);
			} catch (Exception e) {
				System.out.println("db연결 실패"+e.getMessage());
			}
			
			
		}
		
		
		System.out.println("============================================================");
	}
}