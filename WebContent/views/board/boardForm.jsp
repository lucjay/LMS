<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../common/menu.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글등록</title>
<script type="text/javascript">
	function formDataCheck() {
		var form = document.frm;
		if (form.writer.value == "") {
			alert("작성자 이름을 입력하세요.");
			form.writer.focus();
			return false;
		}
		if (form.title.value == "") {
			alert("제목을 입력하세요.");
			form.title.focus();
			return false;
		}

		if (form.contents.value == "") {
			alert("내용을 입력하세요.");
			form.contents.focus();
			return false;
		}
		form.submit();
	}
</script>
</head>
<body>
	<div align="center">
		<div>
			<br>
		</div>
		<h1>글 등록</h1>
		<div>
			<br>
		</div>
		<div>
			<form id="frm" name="frm" action="boardInput.do" method="post">
				<div>
					<table border="0">
						<tr>
							<th bgcolor="lightcyan" width="100" height="50">작성자</th>
							<td><input type="text" id="writer" name="writer" size="15"
								maxlength="15"></td>
							<th bgcolor="lightcyan">작성일자</th>
							<td><input type="date" id="wdate" name="wdate" size="15"
								maxlength="15"></td>
						</tr>
						<tr>
							<th bgcolor="lightcyan" width="100" height="50">제목</th>
							<td colspan="3"><input type="text" id="title" name="title"
								size="45" maxlength="45"></td>
						</tr>
						<tr>
							<th bgcolor="lightcyan">내용</th>
							<td colspan="3"><textarea name="contents" id="contents"
									name="contents" cols="46" rows="13"></textarea></td>
						</tr>
						<tr>
							<th bgcolor="lightcyan">첨부파일</th>
							<td colspan="3"><input type="file" id="attache"
								name="attache"></td>
						</tr>
					</table>
				</div>
				<div align="center">
					<br> &nbsp; &nbsp; <input type="button"
						onclick="formDataCheck()" value="글등록"> &nbsp;&nbsp;<input
						type="reset" value="취소">&nbsp;&nbsp; <input type="button"
						value="목록보기" onclick="location.href='boardList.do'"> <br>
					<br>
				</div>
			</form>
		</div>
	</div>
	<br>
</body>
</html>

<jsp:include page="../common/tail.jsp"></jsp:include>