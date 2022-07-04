<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/includeFile.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${path}/resources/js/login.js"></script>
</head>
<body>
	<div class="container">
		<%@ include file="header.jsp" %>
		<div class="col-lg-10"></div>
		<div class="col-lg-10">
			<div class="jumbotron" style="padding-top:10px; ">
				<form id="frmLogin"  method="post" action="${path}/login">
					<h3 style="text-align: center;">로그인</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="ID" name = "mid" maxlength = "20" id="mid">
					</div><!-- id 창 만들기 form-control을 사용하므로 Bootstrap 자체만의 스타일로 컨트롤이 표시됨 -->
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name = "passwd" maxlength = "20" id="passwd">
					</div>
					<input type="submit" class="btn btn-warning form-control" onclick="loginCheck(event)" value="로그인">
					<input type="reset" value="취소">
				</form>
		</div>
	</div>
</body>
</html>