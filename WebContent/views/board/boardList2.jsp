<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../common/menu2.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Board List</title>
<script type="text/javascript">
function callBoard(id) {
	document.frm.boardid.value = id;
	document.frm.submit();	
}
</script>
</head>
<body>
	<div class="w3-content" style="max-width: 1500px">
		<header class="w3-panel w3-center w3-opacity"
			style="padding: 25px 16px">
			<h1 class="w3-xlarge">FREE</h1>
			<h1>board</h1>
		</header>
	</div>
	<div align="center">
		<div class="container">
			<form id="frm" name="frm" action="boardView.do" method="post">
				<input type="hidden" id="boardid" name="boardid" value="">
				<table class="table table-hover">
					<thead>
						<tr>
							<th width="50">NUM</th>
							<th width="100">WRITER</th>
							<th width="100">DATE</th>
							<th width="200">TITLE</th>
							<th width="50">HIT</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty boardList }">
								<tr>
									<td colspan="5" align="center">데이터가 없습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="board" items="${boardList }">
									<tr onclick="callBoard(${board.boardid})"
										style="cursor: pointer">
										<td>${board.boardid}</td>
										<td>${board.writer}</td>
										<td>${board.wdate}</td>
										<td>${board.title}</td>
										<td>${board.hit}</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</form>

			<br>
			<c:if test="${not empty loginid}">
				<!--  로그인했을때만 보여줄것이다 -->
				<button type="button"
					style="color: white; background: steelblue; font-size: 1em; border-radius: 0.5em; padding: 5px 20px;"
					onclick="location.href='boardInsert.do'">WRITE</button>
			</c:if>
		</div>
	</div>
	<br>
</body>
</html>
<jsp:include page="../common/tail2.jsp"></jsp:include>