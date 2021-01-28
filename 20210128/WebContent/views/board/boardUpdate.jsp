<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<script>
</script>
</head>
<body>
<div align="center">
	<div><h1>게시글 수정 화면</h1></div>
	<div>
	<form id="frm" name="frm" action="boardUpdate.do" method="post">
	<input type="hidden" id="bId" name="bId" value="${vo.bId }">
		<table border="1">
			<tr>
				<th width="70">작성자</th>
					<td width="70"><input type="text" value="${vo.bName }"></td>
				<th width="100">작성일자</th>
					<td width="100">${vo.bDate }</td>	
			</tr>
			<tr>
				<th width="100">제 목</th>
					<td colspan="5"><input type="text" id="bTitle" name="bTitle" size="52" value="${vo.bTitle }" readonly></td>
			</tr>
			<tr>
				<th width="100">내 용</th>
					<td colspan="5"><textarea id="bContent" name="bContent" rows="7" cols="55">${vo.bContent }</textarea></td>
			</tr>	
		</table>
		<div><br/>
			<button type="submit">수정</button>&nbsp;&nbsp;&nbsp;
			<button type="reset">취소</button>&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="location.href='boardList.do'">목록</button>
		</div>
	</form>
	</div>
</div>
</body>
</html>