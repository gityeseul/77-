<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body>
	<h1>글 상세</h1>
	<hr>
	<form action="updateBoard.do" method="post">
		<input name="bnum" type="hidden" value="${board.bnum}" />
		<table border="1" cellpadding="0" cellspacing="0">

			
			<tr>
				<td bgcolor="orange" width="70">제목</td>
				<td align="left"><input name="title" type="text"
					value="${board.title }" /></td>
			</tr>
			<tr>
				<td bgcolor="orange" width="70">작성자</td>
				<td align="left"><input name="cname" type="text"
					value="${board.cname }" /></td>
			</tr>
			<tr>
				<td bgcolor="orange">내용</td>
				<td align="left"><textarea name="content" cols="40" rows="10">${board.content }</textarea></td>
			</tr>
			<%-- <tr>
				<td bgcolor="orange" width="70">파일</td>
				<td align="left"><input type="text"
					value="${board.boardfile }" /></td>
					
				</tr>
			<tr>
				<td bgcolor="orange" width="70">파일변경</td>
				<td align="left">
					<!-- file타입의 name은 MultipartFile의 프라퍼티 --> <input type="file"
					name='file' maxlength="60" size="40">
				</td>
			</tr>	 --%>
				
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="글 수정" /></td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="insertBoard.do">글등록</a>&nbsp;&nbsp;&nbsp;
	<a href="deleteBoard.do?bnum=${board.bnum }">글삭제</a>&nbsp;&nbsp;&nbsp;
	<a href="getBoardList.do">글목록</a>
</body>
</html>
