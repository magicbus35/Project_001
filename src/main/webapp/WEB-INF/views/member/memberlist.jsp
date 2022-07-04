<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/includeFile.jsp" %> 
<%--  <%@ include file="../include/sessionCheck.jsp" %> --%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body >
	<%@include file="../header.jsp" %>
		<h2>조직도 리스트</h2>
		<form action="${path}/member/memberlist">
			<select name="findkey">
				<option value="name" <c:out value="${m_page.findkey=='name'?'selected':''}"/>>성명</option>
				<option value="tcode" <c:out value="${m_page.findkey=='tcode'?'selected':''}"/>>부서명</option>
				<option value="gcode" <c:out value="${m_page.findkey=='gcode'?'selected':''}"/>>직급명</option>
			</select>
			<input type="text" name="findvalue" value="${m_page.findvalue}">
			<button>조회</button>
		</form>
		
	
		<form action="memberlist" method="get">
			<table border="1">
				<tr>
					<th>부서</th>
					<th>직급</th>
					<th>성명</th>
				</tr>
			
			
			
			<c:forEach var ="member" items="${mlist}">
				<tr>
					<td>${member.teamname}</td>
					<td>${member.gradename} </td>
					<td><a href = "${path}/member/memberdetail?mid=${member.mid}">${member.name}</a></td>
				</tr>
				
			
			</c:forEach> 
		</table>
		<%-- ${page} --%>
		<hr>
			<c:if test="${m_page.startPage != 1}">
				<a href="${path}/member/memberlist?curPage=${m_page.startPage-1}">이전</a>
			</c:if>
			
			<c:forEach var="i" begin="${m_page.startPage}" end="${m_page.endPage}">
				<a href="${path}/member/memberlist?curPage=${i}">${i}</a> 
			</c:forEach>
		
			<c:if test="${m_page.endPage<m_page.totPage}">
				<a href="${path}/member/memberlist?curPage=${m_page.endPage+1}">다음</a>
			</c:if>
		</form>
	
	<%@include file="../footer.jsp" %>
</body>
</html>