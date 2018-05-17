<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html;charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">ALPO</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">회사개요</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">알포소개 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">알포란</a></li>
            <li><a href="#">운영구조</a></li>
            <li><a href="#">운영효과</a></li>
            <li><a href="#">추천업종</a></li>
          </ul>
        </li>
        <li>
        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">알포서비스 <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">광고</a></li>
              <li><a href="#">사진인화</a></li>
              <li><a href="#">임대서비스</a></li>
              <li><a href="#">활용사례</a></li>
              <li><a href="#">서비스점</a></li>
              <li><a href="#">이용후기</a></li>
          	</ul>
        </li>
        <li>
        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">알포키오스크 <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">키오스크</a></li>
              <li><a href="#">에플리케이션</a></li>
          	</ul>
        </li>
        <li><a href="#">CONTACT US</a></li>
        <li><a href="#">ALPO Shop</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
        <li><a href="./login.html"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
      </ul>
      <form class="navbar-form navbar-right" action="/action_page.php">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
    </div>
  </div>
</nav>
  
<div class="container">
  	<div id="home" class="tab-pane fade in active">
  		<h3>인사말</h3>
  	  	<p>사진은 우리 삶에서 어떤 의미일까요?
          사진에는 어린시절, 학창시절, 가족/친구/연인 모습, 행복한 시간 등이 담겨있어,
          사진을 볼 때마다 추억을 되새기고 그 때의 감성을 공유하게 됩니다.
          즉, 사진은 우리의 인생 이야기를 기록해주는 소중한 매개체인 것입니다.
          스마트폰의 보급이 확산되면서 사진을 찍는 횟수는 급격히 증가했지만, 
          오히려 저장만 되고 있어 사진의 감성적인 가치는 감소하고 있습니다.
          당사는 스마트폰의 사진을 간편하게 즉석에서 인화 할 수 있는 방법을 고민했으며,
          그 결과 애플리케이션과 키오스크를 활용한 인화솔루션을 개발하게 되었습니다.  
          또한 광고와 사진을 결합한 인화광고를 통해 사진인화를 무료로 제공합니다.
          지속적인 기술 개발과 인화 컨텐츠 확대로 사진인화의 새로운 패러다임을 제시하겠습니다.
      	</p>
    </div>
    
	<div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
</div>
</body>
</html>
