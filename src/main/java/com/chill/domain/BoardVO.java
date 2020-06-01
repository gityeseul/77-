package com.chill.domain;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	private String bcategory;
	private String title;
	private String content;
	private int bnum;
	private String cname;
	private String bdate;
	private String boardfile;
	private long b_fsize;
	
	public long getB_fsize() {
		return b_fsize;
	}
	public void setB_fsize(long b_fsize) {
		this.b_fsize = b_fsize;
	}
	public String getBcategory() {
		return bcategory;
	}

	public void setBcategory(String bcategory) {
		this.bcategory = bcategory;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
		this.bnum = bnum;
	}

	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public String getBoardfile() {
		return boardfile;
	}
	
	public void setBoardfile(String boardfile) {
		this.boardfile = boardfile;
	}


	MultipartFile file; // (***) file 변수명이 폼에 type='file' name='file'

	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {
		this.file = file;

		if (!file.isEmpty()) {
			// MultipartFile에서 파일명과 크기만 얻어오기 -> DB에 입력
			this.boardfile = file.getOriginalFilename();
			this.b_fsize = file.getSize();
			  //실제 파일로 저장하기
			  File f = new File(
			  "D:\\hdj\\springwork\\chill\\src\\main\\webapp\\resources\\upload\\" +
			  boardfile); 
			  try { 
				  file.transferTo(f); 
			  } catch (Exception e) {
			  System.out.println("파일전송실패 : " + e.getMessage()); }
			 
		}
	}

}
