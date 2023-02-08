<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<script	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
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
                    <input class="form-control" type="text"
                    	placeholder="아이디" id="id" name="id"/>
                </div>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-shield-lock"></i></span>
                    <input class="form-control" type="password"
					placeholder="비밀번호" id="pass" name="pass" />
                </div>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-shield-check"></i></span>
                    <input class="form-control" type="password"
					placeholder="비밀번호 확인" id="passCheck"/>
                </div>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-person"></i></span>
                    <input class="form-control" type="text"
					placeholder="이름" id="name" name="name"/>
                </div>
                <!-- <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-phone"></i></span>
                    <input type="text" class="form-control" placeholder="휴대폰 번호">
                </div> -->
                <div class="input-group">
                    <button class="btn btn-primary" type="submit" id="submit" style="width: 700px; height: 60px;">
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
