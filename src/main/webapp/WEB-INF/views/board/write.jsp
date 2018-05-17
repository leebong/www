<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글쓰기</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
	<br><br>
	<h3 align="center">게시판 쓰기</h3><br>
	<div class="container">
		<form method="post">
			<div class="offset-2 col-7">
				<div class="form-group">
				  <label for="author">작성자:</label>
				  <input type="text" class="form-control" id="author" name="author">
				</div>
				<div class="form-group">
				  <label for="title">제목:</label>
				  <input type="text" class="form-control" id="title" name="title">
				</div>
			    <div class="form-group">
			      <label for="contents">내용</label>
			      <textarea class="form-control" rows="5" id="contents" name="contents"></textarea>
			    </div>
			</div>
				<div class="offset-3 col-7">
					<button type="submit" class="btn btn-default">완료</button>
				</div>
		</form>
	</div>
</body>
</html>