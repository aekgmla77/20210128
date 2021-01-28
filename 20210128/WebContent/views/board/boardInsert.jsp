<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새 글 등록 화면</title>
</head>
<body>
<div align="center">
	<div><h1>새 글 등록</h1></div>
	<div>
	<form id="frm" name="frm" action="boardInsert.do" method="post">
		<table border="1">
			<tr>
				<th width="100">작성자</th>
					<td width="150"><input type="text" id="bName" name="bName" size="20" required="required"></td>
				<th width="100">작성일자</th>
					<td width="150"><input type="date" id="bDate" name="bDate" size="20" required="required"></td>	
			</tr>
			<tr>
				<th width="100">제 목</th>
					<td colspan="3"><input type="text" id="bTitle" name="bTitle" size="70" required="required"></td>
			</tr>
			<tr>
				<th width="100">내 용</th>
					<td colspan="3"><textarea id="bContent" name="bContent" rows="7" cols="72" required="required"></textarea></td>
			</tr>	
		</table>
		<div><br/>
			<button type="submit">등록</button>&nbsp;&nbsp;&nbsp;
			<button type="reset">취소</button>&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="location.href='boardList.do'">목록</button>
		</div>
	</form>
	</div>
</div>
</body>
</html>