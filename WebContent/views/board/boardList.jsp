<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../common/menu.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판목록</title>
</head>
<body>
	<div align="center">
		<div>
			<br>
		</div>
		<div>
			<h1>자유게시판</h1>
			<br>
		</div>
		<div>
			<form id="frm" name="frm" action="boardView.do" method="post">
				<table border="0">
					<tr>
						<th width="50">글번호</th>
						<th width="100">작성자</th>
						<th width="100">작성일자</th>
						<th width="200">제목</th>
						<th width="50">조회수</th>
					</tr>
					<c:choose>
						<c:when test="${empty boardList }">
							<tr>
								<td colspan="5" align="center">데이터가 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="board" items="${boardList }">
								<tr onmouseover="this.style.background='gold'"
									onmouseout="this.style.background=''"
									onclick="location.href='boardView.do?boardid=${board.boardid}'">
									<td align="center">${board.boardid}</td>
									<td align="center">${board.writer}</td>
									<td align="center">${board.wdate}</td>
									<td align="center">${board.title}</td>
									<td align="center">${board.hit}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
			</form>
			<br>
		</div>
		<button type="button"
			style="color: white; background: steelblue; font-size: 1em; border-radius: 0.5em; padding: 5px 20px;"
			onclick="location.href='boardInsert.do'">글쓰기</button>
	</div>
	<br>
</body>
</html>
<jsp:include page="../common/tail.jsp"></jsp:include>