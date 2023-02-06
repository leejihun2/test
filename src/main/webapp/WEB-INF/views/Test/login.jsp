<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	$(function(){
		$('#submit').click(function(){
			if($("#id").val()==""){
				alert("아이디를 입력하세요.");
				$("#id").focus();
				return false;
			}
			if($("#pass").val()==""){
				alert("비밀번호를 입력하세요.");
				$("#pass").focus();
				return false;
			}
		});
		$('#logout').click(function(){
			if(confirm("로그아웃하시겠습니까?")){
				location.href="logout.do";
			}
		});
		$('#modify').click(function(){
			location.href="modify.do";
		});
	});
</script>
<body>
	<div class="container">
		<c:choose>
			<c:when test="${empty sessionScope.UserInfo}">
				<form action="loginAction.do" method="POST">
					<table class="table-bordered" style="width: 50%;">
						<tr>
							<td>
								<input type="text" class="form-control" id="id" name="id"
								placeholder="아이디" tabindex="1">
							</td>
							<td rowspan="2" style="width: 80px;">
								<button type="submit"
									class="btn btn-primary" id="submit" style="height: 77px; width: 77px;"
									tabindex="3">로그인</button>
							</td>
						</tr>
						<tr>
							<td>
								<input type="password" class="form-control" id="pass" name="pass"
								placeholder="패스워드" tabindex="2">
							</td>
						</tr>
					</table>
				</form>
				<a href="regi.do">회원가입</a>
				<a href="findinfo.do">아이디/비밀번호 찾기</a>
			</c:when>
			<c:otherwise>
				<h3>아이디 : ${sessionScope.UserInfo.id }</h3>
				<h3>이 름 : ${sessionScope.UserInfo.name }</h3>
				<button class="btn" id="logout">로그아웃</button>
				<button class="btn" id="modify">회원정보수정</button>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>