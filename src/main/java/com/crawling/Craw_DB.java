package com.crawling;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;

public class Craw_DB {
	
	String url="jdbc:oracle:thin:@192.168.0.78:1521:orcl";
	String user="chill";
	String passwd="7777";
	public Craw_DB() throws Exception{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	}
	public void insertCrawling(ArrayList<CrawVO> list) throws Exception{
		Connection con = null;
		try {
			con=DriverManager.getConnection(url,user,passwd);
			PreparedStatement ps = null;
			String []str = {"seq_item_num.nextval","seq_item_num.currval"};
			String num=str[0];
			String sql;
			boolean flag = false;
			for(CrawVO vo : list) {
				System.out.println(vo.getItem_color());
				if(flag) num=str[1];
				sql = "insert into item(item_index,item_num,item_name,item_color,item_image,item_price,item_content,item_size) "
						+ " values(seq_item_index.nextval, "+num+" ,?,?,?,?,?,?) ";
				ps = con.prepareStatement(sql);
				ps.setString(1, vo.getItem_name());
				ps.setString(2, vo.getItem_color());
				ps.setString(3, vo.getItem_image());
				ps.setInt(4, vo.getItem_price());
				ps.setString(5, vo.getItem_content());
				ps.setString(6, vo.getItem_size());
				ps.executeUpdate();
				flag = true;
			}
			ps.close();
			
	
		}finally {con.close();}
		
	}
}
