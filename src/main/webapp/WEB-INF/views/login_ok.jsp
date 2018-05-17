<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div>
				<h6>${id} 로그인 되었습니다.</h6>
			</div>
			<div style="float:right;">
				<a class="text-center" href="/login">로그아웃</a>
			</div>
		</div>
	</div>
	<div class="row">
		<a href="/board/Board_List">게시판으로</a>
	</div>
	
	<div class="row">
		<a href="/board/list">신규게시판으로</a>
	</div>
</body>
</html>