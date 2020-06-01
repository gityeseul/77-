<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>새글등록</title>
</head>
<body>
	<h1>글 등록</h1>
	<hr>
	<!-- 1. 폼태그에 속성 추가  -->
	<!-- ################################# -->

	<form action="saveBoard.do" method="post" enctype="multipart/form-data">
		<!-- 파일업로드시 무조건 필수 -->


		<table border="1" cellpadding="0" cellspacing="0">
			<!-- 2. 각 항목에  name 맞추기 -->

			<label for="bcategory">글 유형</label>
			<select id="bcategory" name="bcategory">
				<option value="">선택하시오</option>
				<option value="Q&A">Q&A</option>
				<option value="후기">후기</option>
			</select>
			<tr>
				<td bgcolor="orange" width="70">제목</td>
				<td align="left"><input type="text" name='title' /></td>
			</tr>
			<tr>
				<td bgcolor="orange" width="70">작성자</td>
				<td align="left"><input type="text" name='cname' /></td>
			</tr>
			<tr>
				<td bgcolor="orange">내용</td>
				<td align="left"><textarea cols="40" rows="10" name='content'></textarea></td>
			</tr>

			<tr>
				<td bgcolor="orange" width="70">파일추가</td>
				<td align="left">
					<!-- file타입의 name은 MultipartFile의 프라퍼티 --> <input type="file"
					name='file' maxlength="60" size="40">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value=" 새글 등록 " /></td>
			</tr>
		</table>
		
	</form>
	<hr>
	<a href="getBoardList.do">글 목록 가기</a>
</body>
</html>