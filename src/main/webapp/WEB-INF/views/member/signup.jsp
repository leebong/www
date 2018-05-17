<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../css/top_style.css" />
<link rel="stylesheet" href="../../css/footer_style.css" />
<link rel="stylesheet" href="../../css/style.css" />
<title>Insert title here</title>
</head>
<body>

    
    <div id="mainForm">
        <h4>회원가입</h4>
        <form action="/member/signupsuccess" method="post">
            <table class="joinForm">
                <tr>
                    <th colspan="2">회원가입</th>
                </tr>
                <tr>
                    <th>Name</th>
                    <td><input type="text" id="sname" name="name" autofocus></td>
                </tr>
                <tr>
                    <th>ID</th>
                    <td><input type="text" id="sname" name="id" ></td>
                </tr>
                <tr>
                    <th>PASSWD</th>
                    <td><input type="text" id="sname" name="pw" ></td>
                </tr>
                <tr>
                    <th>PASSWD</th>
                    <td><input type="text" id="sname" name="pwConfirm" ></td>
                </tr>
                <tr>
                    <th>Phone</th>
                    <td><input type="text" id="sname" name="phone" ></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><input type="text" id="sname" name="email" ></td>
                </tr>
                <tr>
                    <th>Addr</th>
                    <td><input type="text" id="sname" name="addr" ></td>
                </tr>
                <tr>
                    <th colspan="2">
                    <button type="submit" class="form-control btn-outline-primary col-10">가입</button>
	                    <input type="submit" value="가입" id="jButton">
	                    <input type="reset" value="취소" id="cButton">
                    </th>
                </tr>
            </table>
        </form>
    </div>
    
</body>
</html>
