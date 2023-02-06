<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
	$(function(){
		$("#submit").click(function(){
			if(confirm("해당 정보로 수정하시겠습니까?")){
				if(!($("#pass").val()==$("#passCheck").val())){
					alert("비밀번호가 서로 다릅니다");
					return false;
				}
			}
		});
	});
</script>
<body>
	<c:choose>
		<c:when test="${empty dto }">
			<c:if test="${not empty PassError }">
				${PassError }
			</c:if>
			<form action="modify.do" method="POST">
				비밀번호 : <input type="password" name="pass" />
				<button class="btn btn-primary" type="submit">
					정보수정
				</button>
			</form>
		</c:when>
		<c:otherwise>
			<form action="modifyAction.do" method="POST">
				<table class="table-bordered" style="width:50%;">
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
							placeholder="비밀번호 확인" id="passCheck"/>
						</td>
					</tr>
					<tr>
						<td>
							<input class="form-control" type="text"
							placeholder="이름" id="name" name="name" value="${dto.name }"/>
						</td>
					</tr>
					<tr>
						<td>
							<button class="btn btn-primary" type="submit" id="submit">
								정보수정
							</button>
							<button class="btn btn-primary" type="reset">
								다시작성
							</button>
						</td>
					</tr>
				</table>
			</form>
		</c:otherwise>
	</c:choose>
</body>
</html>