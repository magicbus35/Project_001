<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/includeFile.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${path}/resources/js/fileAdd.js"></script>
<link rel="stylesheet" href="${path}/resources/css/style"/>
</head>
<body>
<div class="container">
	<%@ include file="../header.jsp" %>
	<h2>수정</h2>
	<form action="${path}/board/noticeModify" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<th>번호</th>
				<td><input type="text" name="bnum" readonly="readonly" value="${notice.nnum}"> </td>
			</tr>
			<tr class="hidden">
				<th>이메일</th>
				<td><input type="text" name="email" readonly="readonly" value="${notice.email}"> </td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="username" readonly="readonly" value="${notice.username}"> </td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="subject" value="${notice.subject}"> </td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" rows="5" cols="25">${notice.content}</textarea> </td>
			</tr>
			<tr>
				<th>파일 <br><button type="button" onclick="fileAdd(event)">+</button></th>
				<td>
					<!-- 기존파일리스트 -->
					<c:forEach var="noticeFile" items="${nflist}">
						${noticeFile.filename} <input type="checkbox" name="removeFiles" value="${noticeFile.nfnum}">삭제 <br>
					</c:forEach>
					<hr>
					<div id="divFiles">
						<input type="file" name="files"> <br>
					</div>
					
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button>저장</button>
					<button>취소</button>
				</td>
			</tr>
			
			
		</table>
	
	</form>
</div>	
</body>
</html>