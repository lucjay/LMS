<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../common/menu.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<script type="text/javascript">
	function formChecked() {
		var form = document.frm;
		if (form.id.value == "") {
			alert("아이디를 입력하세요.");
			form.id.focus();
			return false;
		}
		if (form.pw.value == "") {
			alert("패스워드를 입력하세요.")
			form.pw.focus();
			return false;
		}
		form.submit();
	}
</script>
</head>
<body>
	<div>
		<br>
	</div>
	<div align="center">
		<h1>로그인</h1>
	</div>
	<br />
	<div align="center">
		<form id="frm" name="frm" action="loginCheck.do" method="post">
			<div>
				<table border="0">
					<tr>
						<th>아이디</th>
						<td><input type="text" id="id" name="id"></td>
					</tr>
					<tr>
						<th>패스워드</th>
						<td><input type="password" id="pw" name="pw"></td>
					</tr>
				</table>
			</div>

			<div>
				<br />
				<button type="button" onclick="formChecked()">로그인</button>
				&nbsp;&nbsp;
				<button type="reset">취소</button>
				&nbsp;&nbsp;
				<button type="button" onclick="location.href='join.do' ">회원가입</button>
				<br> <br>
			</div>
		</form>
	</div>

</body>
</html>
<jsp:include page="../common/tail.jsp"></jsp:include>