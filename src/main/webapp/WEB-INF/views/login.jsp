<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
	<style>
	    body {
	        background: #f8f8f8;
	        padding: 60px 0;
	    }
	    
	    #login-form > div {
	        margin: 15px 0;
	    }
	
	</style>
	
</head>

<body>



	<div class="container">
    	<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div><h5>로그인</h5></div>
            </div>
            <div class="panel-body">
                <form id="login-form" method="post" action="/login_ok">
                    <div>
                        <input type="text" class="form-control col-10" name="id" placeholder="Username" autofocus>
                    </div>
                    <div>
                        <input type="password" class="form-control col-10" name="pw" placeholder="Password">
                    </div>
                    <div>
                        <input type="email" class="form-control col-10" name="email" placeholder="email">
                    </div>
                    <div>
                        <button type="submit" class="form-control btn-outline-primary col-10">로그인</button>
                    </div>
                </form>

                	<div>
            	        <a href="/member/signup">회원가입</a>       	        
            		</div>

            
    	</div>
	</div>

</body>
</html>