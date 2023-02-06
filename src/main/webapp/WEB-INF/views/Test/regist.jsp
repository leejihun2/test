<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>회원가입</title>
</head>
<script type="text/javascript">
$(function(){
	$("#submit").click(function(){
		if($("#id").val()==""){
			alert("아이디를 입력하세요");
			$("#id").focus();
			return false;
		}
		if($("#pass").val()==""){
			alert("비밀번호를 입력하세요");
			$("#pass").focus();
			return false;
		}
		if($("#pass").val()!=$("#passCheck").val()){
			alert("비밀번호가 서로 다릅니다");
			$("#passCheck").focus();
			return false;
		}
		if($("#name").val()==""){
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}
	});
});
</script>
<body>
	<form action="regiAction.do" method="POST">
		<table class="table-bordered" style="width:50%;">
			<tr>
				<td>
					<input class="form-control" type="text"
					placeholder="아이디" id="id" name="id"/>
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
					placeholder="이름" id="name" name="name"/>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-primary" type="submit" id="submit">
						회원가입
					</button>
					<button class="btn btn-primary" type="reset">
						다시작성
					</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>