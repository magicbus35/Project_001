<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${path}/resources/js/header.js"></script>
</head>
<body>
	<header>
        <div id="login" style="word-spacing: 5px; float: right;">
<%-- 			<input type="hidden" value="${path}" id="contextpath"> 
			<span id="sessionEmail"><a href="${path}/member/info"> ${sessionScope.email} </a></span>
			<a href="${path}/login" id="aLogin">로그인</a>
			<a href="" id="aLogout">로그아웃</a>
			<a href="${path}/member/join"  id ="aJoin">회원가입</a> --%>			
			<input type="hidden" id="contextpath" value="${path}/">
			<input type="hidden" id="sessionMcode" value="${sessionScope.mcode}">
			<input type="hidden" id="sessionMid" value="${sessionScope.mid}">
			<span id="sessionName"><a href="${path}/member/memberdetail?mid=${sessionScope.mid}"> ${sessionScope.name} </a></span>
			<a href="${path}/login" id="aLogin">로그인</a>
			<a href="" id="aLogout">로그아웃</a>
			<a href="${path}/member/join" id="aJoin">회원가입</a>
		</div>
		<div id="logo">
			<a href="${path}/" >
				<img src="${path}/resources/images/logo.jpg" width="300" title="회사 로고" style="display: block; margin: 0px auto;" >
			</a>
		</div>
	</header>
	<hr>
	<nav style="word-spacing: 5px">
                    <a href="${path}/"  class="menu-item">HOME</a>
                    <a href="${path}/board/"  class="menu-item">COMMUNITY</a>
                    <a href="${path}/calendar"  class="menu-item">근태관리</a>
                    <a href="${path}/member/memberlist"  class="menu-item">사원조회</a>            	
	</nav>
	<hr>
</body>
</html>
<%-- 	<nav>
		<div id="header">
           <a href="${path}" class="menu-item">HOME</a>
           <a href="${path}" class="menu-item">COMMUNITY</a>
           <a href="${path}" class="menu-item">근태관리</a>
           <a href="${path}" class="menu-item">나의정보</a>

		</div>

			
	</nav> --%>

<%-- 						<a href="${path}">HOME</a>
						<a href="${path}">COMMUNITY</a>
						<a href="${path}">근태관리</a>	
						<a href="${path}">나의정보</a>	 --%>