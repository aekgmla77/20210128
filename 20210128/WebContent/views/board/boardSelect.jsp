<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세화면</title>
<script type="text/javascript">
	function deleteAlert(){
		var yn = confirm("정말 삭제하시겠습니까?");
		if(yn) {
			frm.action.value="boardDelete.do";
			frm.submit();
		}else {
			
		}
	}
	
	function editAlert(){
		frm.action="location.href='boardupForm.do?row='+ ${vo.bId }";
		frm.submit();
	}
</script>
</head>
<body>
<div align="center">
	<div><h1>게시글 상세화면</h1></div>
	<div>
	<form id="frm" name="frm" action="boardDelete.do" method="post">
		<table border="1">
			<%-- <c:if test="${empty list }">
				<tr>
					<td width="750" align="center">존재하지 않는 글입니다.</td>
				</tr>
			</c:if> --%>
			<tr>
				<th width="100">작성자</th>
					<td width="100" align="center">${vo.bName }</td>
				<th width="100">작성일자</th>
					<td width="120" align="center">${vo.bDate }</td>	
				<th width="70">조회수</th>
					<td width="70" align="center">${vo.bHit}</td>
			</tr>
			<tr>
				<th width="100">제 목</th>
					<td colspan="5">&nbsp;${vo.bTitle }</td>
			</tr>
			<tr>
				<th width="100">내 용</th>
					<td colspan="5"><textarea rows="6" cols="100">${vo.bContent }</textarea></td>
			</tr>	
		</table><br/>
	<div>
		<button type="button" onclick="location.href='boardList.do'">목록</button>&nbsp;&nbsp;&nbsp;
		<button type="button" onclick="deleteAlert()">삭제</button>&nbsp;&nbsp;&nbsp;
		<button type="button" onclick="editAlert()">수정</button>
		<input type="hidden" id="bId" name="bId" value="${vo.bId }">
	</div>
    </form>
    </div>
</div>
</body>
</html>