<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
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
function registerValidate(f)
{
	if(f.id.value==""){
		alert("아이디를 입력하세요");
		f.id.focus();
		return false;
	}
	if(f.name.value==""){
		alert("이름을 입력하세요");
		f.name.focus();
		return false;
	}
	if(f.pass.value==""){
		alert("비밀번호를 입력하세요");
		f.pass.focus(); 
		return false;
	} 
	
}
</script>
<div class="container">
	<h3>방명록(글쓰기) - 
		<small>Mybatis로 제작한 방명록입니다.</small></h3>
	
	<!-- JSTL의 url태그는 컨텍스트루트 경로를 자동으로 포함시켜 준다. -->
	<form name="registerFrm" method="post" 
		onsubmit="return registerValidate(this);"
		action="<c:url value="/mybatis/registerAction.do" />" >
		
	<table class="table table-bordered">
	<colgroup>
		<col width="20%"/>
		<col width="*"/>
	</colgroup>
	<tbody>
		<tr>
			<th class="text-center" 
				style="vertical-align:middle;">아이디</th>
			<td>
				<textarea rows="1" class="form-control" 
				name="id"></textarea>
			</td>
		</tr>	
		<tr>
			<th class="text-center" 
				style="vertical-align:middle;">이름</th>
			<td>
				<textarea rows="1" class="form-control" 
				name="name"></textarea>
			</td>
		</tr>	
		<tr>
			<th class="text-center" 
				style="vertical-align:middle;">비밀번호</th>
			<td>
				<textarea rows="1" class="form-control" 
				name="pass"></textarea>
			</td>
		</tr>	
	</tbody>
	</table>
	
	<div class="row text-center" style="">
		<!-- 각종 버튼 부분 -->
		<button type="submit" class="btn btn-secondary">작성하기</button>
		<button type="reset" class="btn btn-secondary">Reset</button>
		<button type="button" class="btn btn-secondary" 
			onclick="location.href='listSearch.do';">리스트보기</button>
	</div>
	</form> 
</div>

</body>
</html>