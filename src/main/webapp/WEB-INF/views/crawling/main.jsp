<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/js_crawling.js"></script>
</head>
<body>
	<form action="crawling.do" method="post">
		<table border="1" cellpadding="0" cellspacing="0">
			
			<tr>
				<td>사이트</td>
				<td width="100">
					<select id="url">
						<c:forEach items="${store }" var="list">
							<option value="${list.store_url }">${list.store_name }</option>
						</c:forEach>
					</select>
				</td>
				<td width="400"><input type="text" id="urlText" width="400"/></td>
			</tr><br/>
			<tr>
				<td>카테고리</td>
				<td width="100">
					<select id="cat">
						<option>TOP</option>
						<option>BOTTOM</option>
						<option>DRESS</option>
						<option>ACC</option>
					</select>
				</td >
				<td><input type="text"/></td>
			</tr><br/>
			<tr>
				<td>기타</td>
				<td width="100">
					<select id="temp">
						<c:forEach items="${store }" var="list">
							<option>${list.store_name }</option>
						</c:forEach>
					</select>
				</td>
				<td><input type="text"/></td>
			</tr><br/>
		</table>
		<table>
			<tr>
				<td><input type="button" value="저장"></td>
				<td><input type="button" id="req" value="불러오기"></td>
			</tr>
		</table>
		<table border="1" cellpadding="0" cellspacing="0">
			
		</table>
	</form>
	
</body>
</html>