<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../common/menu2.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<div align="center">
		<div class="w3-content" style="max-width: 1500px">
			<header class="w3-panel w3-center w3-opacity"
				style="padding: 25px 16px">
				<h1 class="w3-xlarge">WELCOME</h1>
				<!--  <h1>${member.name}<font color="red">♥</font> //리퀘스트일때-->
				<h1>${name}<font color="red">♥</font>
					<!-- //세션일때-->
				</h1>
			</header>
		</div>
		<div>
			<br>
		</div>
	</div>
</body>
</html>
<jsp:include page="../common/tail2.jsp"></jsp:include>