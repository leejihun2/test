<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	$(function() {
		$("input[name='found']").change(function() {
			var value = $('input[name="found"]:checked').val();
			$("#id").val("");
			$("#name").val("");
			if(value==1){
				$("#id").css("display","none");
			}
			if (value == 2) {
				$("#id").css("display","block");
			}
		});
		$("#find").click(function(){
			var value = $('input[name="found"]:checked').val();
			if($("#name").val()==""){
				alert("이름을 입력해주세요");
				$("#name").focus();
				return false;
			}
			if(value==2){
				if($("#id").val()==""){
					alert("아이디를 입력해주세요");
					$("#id").focus();
					return false;
				}
			}
		});
		$("#reset").click(function(){
			$("#id").css("display","none");
		});
	});
</script>
<body>
	<div class="container">
		<c:choose>
			<c:when test="${empty MemberInfo }">
				<form action="findAction.do" method="POST">
					<input type="radio" name="found" value="1" checked />아이디 찾기 <input
						type="radio" name="found" value="2" />비밀번호 찾기
					<table class="table-bordered" style="width: 50%;">
						<tr>
							<td><input type="text" class="form-control" id="id" name="id"
								placeholder="아이디" style="display: none;"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" id="name"
								name="name" placeholder="이름"></td>
						</tr>
					</table>
					<button class="btn btn-primary" type="submit" id="find" name="find">찾기</button>
					<button class="btn btn-primary" type="reset" id="reset">다시작성</button>
				</form>
			</c:when>
			<c:otherwise>
				<div class="row" style="border: 2px solid #cccccc; padding: 10px;">
					<h4>${MemberInfo }</h4>
					<br />
					<br />
					<button class="btn btn-danger" onclick="location.href='login.do';">
						로그인 페이지</button>
					&nbsp;&nbsp;
					<button class="btn btn-primary" onclick="location.href='findinfo.do';">
						다시 조회</button>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>