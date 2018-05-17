<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>게시판</title>

</head>
<body>
	<div class="container">
	  <h2>게시판</h2>
	              
	  <table class="table table-warning table-hover">
	    <thead color-red>
	      <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>작성자</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <th>${board.number}</th>
	        <th><a href="./write">${board.title}</a></th>
	        <th>${board.author}</th>
	      </tr>
	      <tr>
	        <td>${board.number}</td>
	        <td><a href="./write">${board.title}</td>
	        <td>${board.author}</td>
	      </tr>
	      <tr>
	        <td>${board.number}</td>
	        <td><a href="./write">${board.title}</td>
	        <td>${board.author}</td>
	      </tr>
	    </tbody>
	  </table>
	  <a href="/">
	  	<button class="btn btn-default">홈</button>
	  </a>
	  <a href="/board/write" style="margin:0 0 0 20px;">
	  	<button class="btn btn-default">글쓰기</button>
	  </a>
	</div>
</body>
</html>