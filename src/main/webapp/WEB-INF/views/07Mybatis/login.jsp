<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>login</title>
<style>
    p{font-weight: bold; font-size: 18px; }
    body{font-family: dotum,sans-serif;}
    input{width: 450px;height: 60px;}
    .login_btn{
   		border: none;
   	    background-color: #0074e9;
	    color: #fff;
	    box-shadow: inset 0 -2px 0 rgb(0 0 0 / 38%);
	    padding: 16px 17px;
	    font-family: apple sd gothic neo,malgun gothic,nanumbarungothic,nanumgothic,dotum,sans-serif;
	    font-size: 17px;
	    line-height: 20px;
	    display: block;
	    padding-left: 0;
	    padding-right: 0;
	    width: 100%;}
   	.regist_btn{
	   	border: 1px solid #ccc; 
	    background-color: #fff;
	    color: #0073e9;
	    box-shadow: inset 0 -1px 0 rgb(0 0 0 / 15%);
	    padding: 16px 17px;
	    font-family: apple sd gothic neo,malgun gothic,nanumbarungothic,nanumgothic,dotum,sans-serif;
	    font-size: 17px;
	    line-height: 20px;
	    display: block;
	    padding-left: 0;
	    padding-right: 0;
	    margin: 18px 0 0;
	    width: 49%;}
    .btn_text{font-weight: bold; font-size: 17px;} 
    hr{
	    width: 100%;
	    margin: 18px 0 0;
	    border-top: 1px solid gray;}
	a{
		text-decoration: none;
		float: right;
	}
	.login_check{
        position: relative;
	    width: 24px;
	    height: 24px;
	    margin: 0;
	    padding: 0;
	    border: 0;
	    border-radius: 1px;
	    vertical-align: middle;
    }
    .check_box{
   	    vertical-align: middle;
	    color: #555;
	    font-size: 14px;
	    line-height: 24px;
    }
</style>
</head>
<body style="width: 100%; overflow: hidden;">
<!-- 아이디, 패스워드 입력여보를 확인하기 위한 스크립트 -->
<script type="text/javascript">
function loginValidate(f)
{
	if(f.id.value==""){
		alert("아이디를 입력하세요");
		f.id.focus();
		return false;
	}
	if(f.pass.value==""){
		alert("패스워드를 입력하세요"); 
		f.pass.focus();
		return false;
	} 
}
</script>
<div class="container"> 
	<!-- 로그인이 된 경우 회원정보와 로그아웃 버튼을 출력한다. -->
	<c:choose>
		<c:when test="${not empty sessionScope.siteUserInfo }">
			<div class="row" style="border:2px solid #cccccc;padding:10px;">		
				<!-- 로그인에 성공한 경우 DTO객체에 회원정보를 저장한 후 
				세션영역에 저장할것이므로, 출력시에는 getter()를 사용하기
				위해 멤버변수로 접근한다. EL에서는 멤버변수명만으로 getter()
				에 접근할 수 있다. -->	
				<h4>아이디:${sessionScope.siteUserInfo.id }</h4>
				<h4>이름:${sessionScope.siteUserInfo.name }</h4>
				<br /><br />
				<button class="btn btn-danger" 
					onclick="location.href='logoutAction.do';">
					로그아웃</button>
				&nbsp;&nbsp;
				<button class="btn btn-primary" 
					onclick="location.href='listSearch.do';">
					방명록리스트</button>
			</div>
		</c:when>
		<c:otherwise>
			<!-- 로그아웃 상태에서는 로그인폼을 출력한다. -->
			<!-- 로그인에 실패한 경우 에러메세지를 출력하는 부분 -->
			<span style="font-size:1.5em; color:red;">${LoginNG }</span>
			<form name="loginForm" method="post" action="./loginAction.do" onsubmit="return loginValidate(this);">
			 	<div class="container d-flex justify-content-center">
        			<!-- 로고이미지 -->
       				<a href="#">
            			<img src="../resources/roupang.png"  
                			style="width: 350px; margin:40px;">
       			 	</a>
    			</div>
				<input type="hidden" name="backUrl" value="${param.backUrl }"/>
				 <div class="container">
						<div class="row">
							<div class="col-3"></div>
							<div class="col-6">
								<!-- 정보 입력 -->
								<div class="input-group mb-4">
									<span class="input-group-text"><i class="bi bi-envelope"></i></span>
									<input type="text" name="id" class="form-control"
										placeholder="아이디(이메일)">
								</div>
								<div class="input-group mb-3">
									<span class="input-group-text"><i
										class="bi bi-shield-lock"></i></span> <input type="password"
										name="pass" class="form-control" placeholder="비밀번호">
								</div>
								<div style="display: block;">
									<label>
										<input class="login_check" type="checkbox">
										<span class="check_box">로그인 상태 유지</span>
									</label>
									<a href="./findinfo.do">아이디/비밀번호찾기<span style="font-weight: bold;">></span></a>
								</div>
								<button class="login_btn mt-3">
									<span class="btn_text" style="color: white;">로그인</span>
								</button>
								<hr>
							</div>
							<div class="col-3"></div>
						</div>
					</div>
			</form>
		</c:otherwise>
	</c:choose>
	<div class="container d-flex justify-content-center">
		<button class="regist_btn" style="background: white;"
		 		onclick="location.href='register.do';">
			<span class="btn_text" style="color: blue;">회원가입</span>
		</button>
	</div>
</div>
</body>
</html>
