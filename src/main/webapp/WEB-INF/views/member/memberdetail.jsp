<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/includeFile.jsp" %> 
<%-- <%@ include file="../include/sessionCheck.jsp" %>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style type="text/css">

	 #wrapper{
        width:400px;
        margin:auto;
    }

    #buttonid{
        width:fit-content;
        margin:auto;
      	style="background-color:skyblue;"
    }

    #buttonid{
        width:100px;
        margin:auto;
        display:block;
    }

	#divInfo{
		display: flex;
		justify-content: center;
	}    
	
	    

</style> 
</head>
<body>
	<h2>개인정보조회</h2>
	
	
	
	<button id= "return" type= "button" onclick="location.href='${path}/member/memberlist'" style="float:right">리스트</button>
	<button id="buttonid" type="button" onclick="location.href='${path}/member/membermodify?mid=${member.mid}'" style="float:right">수정</button>
	
	<form action="memberdetail" method="get">
		<hr>
	<ul>
		<li>개인정보</li>
	</ul>	
		
		
	<div id="divInfo">
			<img alt="" src="${path}/savedir/${member.filename}" width="200"> <br>			
		<div>
			<table border="1" id = profiletable>
				<tr>
					<td>
					<c:forEach var="member" items="${mlist}">
						${member.filename} <br>
					</c:forEach> 
					</td>
				</tr> 
			</table>
		</div>
		<div>
			<table border="1" >
				<tr>
					<th>성명</th>
					<td>${member.name}</td>
					<th>생년월일</th>
					<td>${member.birthday}</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>${member.mobile}</td>
					<th>이메일</th>
					<td>${member.email}</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>${member.addrload}</td>
					<th>상세주소</th>
					<td>${member.addrdetail}</td>
				</tr>
			</table>
		</div>
	</div>
		
		
		<hr>
		
		<ul>
			<li>사원정보</li>
		</ul>
		
		<table border="1">
			<tr>
				<th>아이디</th>
				<td id="mid">${member.mid}</td>
				<th>입사일</th>
				<td><fmt:formatDate value="${member.regidate}" pattern="yyyy-MM-dd"/></td>
				
			</tr>
			<tr>
				<th>부서</th>
				<td>${member.teamname}</td>
				<th>직급</th>
				<td>${member.gradename}</td>
				
			</tr>
		
		</table>
	</form>
	<%@include file="../footer.jsp" %>
</body>
</html>