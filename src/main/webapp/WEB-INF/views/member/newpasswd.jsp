<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/includeFile.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${path}/resources/js/memberJoin.js"></script>
</head>
<body>
	<%@include file="../header.jsp" %>
		<h2>비밀번호 변경</h2>
		<form name="pwModify" id="pwModify" action="${path}/member/newpasswd" method="post" ></form>
		<table>
			<tr>
				<th>기존비밀번호</th>
				<td><input type="password" name="passwd" id="oldPasswd"> </td>
			</tr>
			<tr>
				<th>변경비밀번호</th>
				<td><input type="password" name = "newpasswd" id="newPasswd"> </td>
			</tr>			
			<tr>
				<th>변경비밀번호확인</th>
				<td><input type="password" id="newPasswdConfirm"> </td>
			</tr>			
			<tr>
				<td colspan="2" align="center">
					<button type = "button" onclick="pwCheck(event)">변경</button> 
					
					<button type="reset" onclick = "location.href='${path}/member/membermodify?mid=${param.mid}'">취소</button>
				</td>
			</tr>	
			
		</table>
	<%@include file="../footer.jsp" %>
</body>
</html>