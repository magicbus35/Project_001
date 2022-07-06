<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/includeFile.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${path}/resources/js/memberJoin.js"></script> 
<link rel="stylesheet" href="${path}/resources/css/button.css">
<style type="text/css">
    #wrapper{
        width:400px;
        margin:auto;
    }

    #wrapper{
        width:fit-content;
        margin:auto;
      	style="background-color:skyblue;"
    }

    #buttonid{
        width:120px;
        margin:auto;
        display:block;
    }

	#divInfo{
		display: flex;
		justify-content: center;
	}    
	.container_a {
		 width: 800px;
 		 margin: 0 auto;
	}
</style>
</head>

<body>
		<div>
			<h2>개인정보수정</h2>
		</div>
		
	<div class="container">
   		 <button id="buttonid"  type= "button" onclick = "location.href='${path}/member/newpasswd?mid=${member.mid}'" style="float:right" class="btn-gradient blue small lalala"> 비밀번호변경 </button>
   		 <button id="buttonid" type="button" onclick="modifyCheck(event)" style="float:right" class="btn-gradient blue small"> 저장 </button>
	</div>
	
	<form name = "membermodify" id= "membermodify" action="${path}/member/membermodify" method="post" enctype="multipart/form-data">
	

	<hr>
	
	<div class="container_a">
		<h4>개인정보</h4>
	</div>
	
	
	<div id="divInfo">
		<input type="hidden" name="filename" value="${member.filename}">
		<input type="hidden" id="gcode" value="${sessionScope.gcode}">
		<img alt="" src="${path}/savedir/${member.filename}" width="200" height="200"> 
		<input type="file" name="photofile" >
	</div>
	<div id="divInfo">
		<table border="1" id="divInfo">
			<tr>
				<th>성명</th>
				<td><input type="text" name="name" id="name" value="${member.name}"></td>
				<th>생년월일</th>
				<td><input type="text" name="birthday" id="birthday" value="${member.birthday}"></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text" name="mobile" id="mobile" value="${member.mobile}"></td>
				<th>이메일</th>
				<td><input type="text" name="email" id="email" value="${member.email}"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="addrload" id="addrload" value="${member.addrload}"></td>
				<th>상세주소</th>
				<td><input type="text" name="addrdetail" id="addrdetail" value="${member.addrdetail}"></td>
			</tr>
			</table>
		</div>
		<hr>
		<div id="divInfo">
			<h4>사원정보</h4>
		</div>
		<div id="divInfo">
			<table border="1" id="divInfo">
			<tr>
				<th>아이디</th>
				<td><input type="text"  name ="mid" id="mod_mid" value="${member.mid}"></td>
				<th>입사일</th>
				<td><fmt:formatDate value="${member.regidate}" pattern="yyyy-MM-dd"/> </td>
			</tr>
			<tr>
				<th>부서</th>
				<td><input type="text"  id="mod_teamname"  name="teamname" value="${member.teamname}"></td>
				<th>직급</th>
				<td><input type="text"  id="mod_gradename" name="gradename" value="${member.gradename}"></td>
			</tr>
			</table>
		</div>
	</form>
	
	
</body>
</html>