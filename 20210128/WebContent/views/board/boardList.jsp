<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시한 목록 보여주는 화면입니다.</title>
<style type="text/css">
tr.row:hover {
	background-color: lightblue
}
</style>
<script type="text/javascript">
	function formSubmit(str){
		frm.bId.value=str;
		frm.submit();
	}
</script>
</head>
<body>
<div align="center">
	<div><h1>게시글 목록</h1></div>
	<div>
		<form id="frm" name="frm" action="boardSelect.do" method="post">
			<input type="hidden" id="bId" name="bId">
		</form>
	</div>
	<div>
		<table border="1">
			<tr>
				<th width="100">글 번호</th>
				<th width="200">제 목</th>
				<th width="100">작성자</th>
				<th width="150">작성일자</th>
				<th width="50">조회수</th>
			</tr>
			<c:choose>
			<c:when test="${empty list }">
				<tr><td colspan="5">게시글이 없습니다.</td></tr>
			</c:when>
			<c:when test="${not empty list }">
				<c:forEach var = "vo" items="${list }">
					<tr class="row" onclick="formSubmit(${vo.bId })">
						<td align="center">${vo.bId }</td>
						<td>&nbsp;${vo.bTitle }</td>
						<td align="center">${vo.bName }</td>
						<td align="center">${vo.bDate }</td>
						<td align="center">${vo.bHit }</td>
					</tr>
				</c:forEach>
			</c:when>
			</c:choose>			
		</table>
	</div><br/>
	<div>
		<button type="button" onclick="location.href='boardForm.do'">새 글 등록</button>&nbsp;&nbsp;
	</div>
</div>
</body>
</html>