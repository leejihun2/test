<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
a{text-decoration:none; color: purple;}
a:hover {text-decoration: underline; color: purple;}
body
{
background-color:#D9E5FF;
}
</style>
</head>
<body>
<script type="text/javascript">
$(function(){
	$("#submit").click(function(){
		if(confirm("해당 정보로 수정하시겠습니까?")){
			if(!($("#pass").val()==$("#passCheck2").val())){
				alert("비밀번호가 서로 다릅니다");
				return false;
			}
		}
	});
});
</script>
<div class="container">
	<h3>방명록(글쓰기) - 
		<small>Mybatis로 제작한 방명록입니다.</small></h3>
	
	<c:choose>
	<c:when test="${empty dto }">
		<c:if test="${not empty PassError }">
			${PassError }
		</c:if>
		<form action="passCheck.do" method="POST">
			비밀번호 : <input type="password" name="pass" />
			<button class="btn btn-primary" type="submit">
				정보수정
			</button>
		</form>
	</c:when>
	<c:otherwise>
		<form name="idmodifyFrm" method="post" 
			onsubmit="return idmodifyValidate(this);"
			action="<c:url value="/mybatis/idmodifyAction.do" />" >	
		<input type="hid den" name="previd" value="${dto.id }"/>
		<input type="hid den" name="prevname" value="${dto.name }"/>
		<input type="hid den" name="prevpass" value="${dto.pass }"/>
			
		<table class="table table-bordered">
		<colgroup>
			<col width="20%"/>
			<col width="*"/>
		</colgroup>
		<tbody>
			<tr>
				<td>
					<input class="form-control" type="text"
					placeholder="아이디" id="id" name="id" readonly value="${dto.id}"/>
				</td>
			</tr>
			<tr>
				<td>
					<input class="form-control" type="password"
					placeholder="비밀번호" id="pass" name="pass" />
				</td>
			</tr>
			<tr>
				<td>
					<input class="form-control" type="password"
					placeholder="비밀번호 확인" id="passCheck2"/>
				</td>
			</tr>
			<tr>
				<td>
					<input class="form-control" type="text"
					placeholder="이름" id="name" name="name" value="${dto.name }"/>
				</td>
			</tr>
		</tbody>
		</table>
		
		<div class="row text-center" style="">
			<!-- 각종 버튼 부분 -->		
			<button type="submit" id="submit" class="btn btn-secondary">수정하기</button>
			<button type="reset" class="btn btn-secondary">Reset</button>
			<button type="button" class="btn btn-secondary" 
				onclick="location.href='listSearch.do';">리스트보기</button>
		</div>
		</form>
	</c:otherwise>
</c:choose> 
</div>

</body>
</html>