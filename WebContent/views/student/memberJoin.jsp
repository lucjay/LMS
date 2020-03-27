<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../common/menu.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	function formDataCheck() {
		var form = document.frm;
		if (form.name.value == "") {
			alert("사용자 이름을 입력하세요.");
			form.name.focus();
			return false;
		}
		if (form.id.value == "") {
			alert("사용자 아이디를 입력하세요.");
			form.id.focus();
			return false;
		}
		if (form.pw.value == "") {
			alert("사용자 패스워드를 입력하세요.");
			form.pw.focus();
			return false;
		}
		if (form.pwc.value == "") {
			alert("사용자 확인값을 입력하세요.");
			form.pwc.focus();
			return false;
		}
		form.submit(); //버튼타입으로 했을때 form.submit() 서브밋타입으로 했을땐 return ture 
	}
</script>
</head>
<body>
	<div align="center">
		<br>
		<div>
			<h1>회원가입</h1>
			<br>
		</div>
		<div>
			<form id="frm" name="frm" action="memberInsert.do" method="post">
				<div>
					<table border="0">
						<tr height="30">
							<th width="100"><font color=red>*</font> 회원명</th>
							<td colspan="3"><input type="text" id="name" name="name"
								size="30"></td>
						</tr>
						<tr height="30">
							<th><font color=red>*</font> ID</th>
							<td colspan="3"><input type="text" id="id" name="id"
								size="30">&nbsp;&nbsp;
								<button type="button" onclick="">중복체크</button></td>
						</tr>
						<tr height="30">
							<th><font color=red>*</font> PW</th>
							<td colspan="3"><input type="password" id="pw" name="pw"
								size="30"></td>
						</tr>
						<tr height="30">
							<th><font color=red>*</font> PW확인</th>
							<td colspan="3"><input type="password" id="pwc" name="pwc"
								size="30"></td>
						</tr>
						<tr height="30">
							<th>주소</th>
							<td colspan="3"><input type="text" id="address"
								name="address" size="45"></td>

						</tr>
						<tr height="30">
							<th>전화번호</th>
							<td><input type="text" id="tel" name="tel" size="15"></td>
							<th width="100">성별</th>
							<td><input type="radio" id="gender" name="gender"
								value="male">남자&nbsp;<input type="radio" id="gender"
								name="gender" value="female">여자</td>

						</tr>
						<tr height="30">
							<th>취미</th>
							<td colspan="3"><input type="checkbox" id="hobby"
								name="hobby" value="운동 ">운동&nbsp; <input type="checkbox"
								id="hobby" name="hobby" value="영화 ">영화&nbsp; <input
								type="checkbox" id="hobby" name="hobby" value="음악 ">음악&nbsp;
								<input type="checkbox" id="hobby" name="hobby" value="기타 ">기타</td>
						</tr>
					</table>
				</div>
				<div>
					<br /> <input type="button" onclick="formDataCheck()" value="가입하기">
					&nbsp;&nbsp;<input type="reset" value="취소">&nbsp;&nbsp; <input
						type="button" value="홈으로" onclick="location.href='home.do'">
					<br> <br>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
<jsp:include page="../common/tail.jsp"></jsp:include>