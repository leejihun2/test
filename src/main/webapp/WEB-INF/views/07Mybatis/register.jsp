<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<head>
<meta charset="UTF-8">
<title>regist</title>
<style>
    p{font-weight: bold; font-size: 18px; }
    body{font-family: dotum,sans-serif;}
    input{width: 450px;height: 60px;}
    .input-group{margin-bottom: 30px;}
</style>
</head>
<script type="text/javascript">
function registValidate(f)
{
	if(f.id.value==""){
		alert("아이디를 입력하세요.");
		f.id.focus();
		return false;
	}
	if(f.pass.value==""){
		alert("패스워드를 입력하세요.");
		f.pass.focus(); 
		return false;
	} 
	if(f.name.value==""){
		alert("이름을 입력하세요.");
		f.name.focus(); 
		return false;
	} 
}
</script>
<body>
	<form action="<c:url value="/mybatis/registerAction.do" />" 
		 method="post" onsubmit="return registValidate(this)">
	 <div class="container d-flex justify-content-center">
        <!-- 로고이미지 -->
        <a href="#">
            <img src="../resources/roupang.png"  
                style="width: 350px; margin:40px;">
        </a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6">
                <p>회원정보를 입력해주세요</p>
                <!-- 정보 입력 -->
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-envelope"></i></span>
                    <input type="text" name="id" class="form-control" placeholder="아이디(이메일)">
                </div>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-shield-lock"></i></span>
                    <input type="password" name="pass" class="form-control" placeholder="비밀번호">
                </div>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-shield-check"></i></span>
                    <input type="password" class="form-control" placeholder="비밀번호 확인">
                </div>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-person"></i></span>
                    <input type="text" name="name" class="form-control" placeholder="이름">
                </div>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-phone"></i></span>
                    <input type="text" class="form-control" placeholder="휴대폰 번호">
                </div>
                <div class="input-group">
                    <button class="btn btn-primary" style="width: 700px; height: 60px;">
                        <span style="font-weight: bold; font-size: 20px;">동의하고 가입하기</span>
                    </button>
                </div>
            </div>
            <div class="col-3"></div>
        </div>
    </div>
	</form>
</body>
</html>
