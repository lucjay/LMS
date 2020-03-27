<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../common/menu.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>
	<div align="center">
		<div>
			<br>
		</div>
		<div>
			<h1>회원목록</h1>
			<br>
		</div>
		<div>
			<table border="0">
				<tr>
					<th width="100">아이디</th>
					<th width="100">이름</th>
					<th width="100">주소</th>
					<th width="100">전화번호</th>
					<th width="100">성별</th>
					<th width="100">취미</th>
				</tr>
				<c:choose>
					<c:when test="${empty members }">
						<tr>
							<td colspan="6" align="center">데이터가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="member" items="${members }">
							<tr>
								<td align="center">${member.id}</td>
								<td align="center">${member.name}</td>
								<td align="center">${member.address}</td>
								<td align="center">${member.tel}</td>
								<td align="center">${member.gender}</td>
								<td align="center">${member.hobby}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
			<br>
		</div>
	</div>
</body>
</html>
<jsp:include page="../common/tail.jsp"></jsp:include>
