<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/includeFile.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/style_board_detail.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/style"/>
<script type="text/javascript" src="${path}/resources/js/fileAdd.js"></script>
</head>
<body>
	<form id="frm">
		<div class="divide">
			<table class="board_view">
				<colgroup>
					<col width="15%"/>
					<col width="35%"/>
					<col width="15%"/>
					<col width="35%"/>
				</colgroup>
				<caption>게시글 수정</caption>
				<tbody>
					<tr class="hidden">
						<th>아이디</th>
						<td>${board.mid }</td>
					</tr>
					<tr>
						<th scope="row">글 번호</th>
						<td id="bnum">${board.bnum}</td>
						<th scope="row">조회수</th>
						<td>${board.readcnt }</td>
					</tr>
					<tr>
						<th scope="row">작성자</th>
						<td>${board.username }</td>
						<th scope="row">작성시간</th>
						<td>${board.createtime }</td>
					</tr>
					<tr>
						<th scope="row">제목</th>
						<td colspan="3">
							<input type="text" id="subject" name="subject" class="wdp_90" value="${board.subject }"/>
						</td>
					</tr>
					<tr>
						<td colspan="4" class="view_text">
							<textarea rows="20" cols="100" title="내용" id="content" name="content">${board.content }</textarea>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="btn_location">
				<button class="btn">저장하기</button>
				<button class="btn" type="reset" OnClick="location.href='${path}/board/list'">목록으로</button>
			</div>
		</div>
	</form>
</body>
</html>