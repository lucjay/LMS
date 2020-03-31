<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>BINWOO</title>
<link rel="stylesheet" href="css/main2.css">
</head>
<body>
	<header class="w3-panel w3-center w3-opacity"
		style="padding: 60px 16px">
		<div id="menu1" class="w3-padding-32">
			<div class="w3-bar w3-border">
				<a href="home.do" class="w3-bar-item w3-button">Home</a>
				<c:choose>
					<c:when test="${not empty loginid}">
						<c:if test="${auth == 'S' }">
							<a href="memberList.do"
								class="w3-bar-item w3-button w3-light-grey">Members</a>
						</c:if>
						<a href="boardList.do" class="w3-bar-item w3-button">Board</a>
						<a href="logout.do" class="w3-bar-item w3-button w3-hide-small">Logout</a>
					</c:when>
					<c:otherwise>
						<a href="boardList.do" class="w3-bar-item w3-button">Board</a>
						<a href="join.do" class="w3-bar-item w3-button w3-hide-small">Join</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</header>
</body>
</html>