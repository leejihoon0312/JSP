
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- 디렉티브 태그(taglib)--%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./assets/css/login.css">
    <script src="http://code.jquery.com/jquery-1.11.0.js"></script>


</head>
<body>
<div class="wrapper">
    <div class="container">

        <div class="sign-in-container">
            <%-- 폼 태그(form) + 폼 태그(input) --%>
            <form action="j_security_check" name="loginForm" method="post">
                <h1>Sign In</h1>
                <div class="social-links">
                    <div>
                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    </div>
                    <div>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </div>
                    <div>
                        <a href="#"><i class="fa fa-commenting" aria-hidden="true"></i></a>
                    </div>
                </div>
                <span>or use your account</span>
                <c:if test="${param.error == 1}">
                    <span style="color: red">아이디 또는 비밀번호를 확인해주세요!</span>
                </c:if>
                <input type="text" placeholder="Id" name="j_username">
                <input type="password" placeholder="Password" name="j_password" >
                <button class="form_btn" type="submit">Sign In</button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay-right">
                <h1>Welcome, <br>Whats Left</h1>
                <p>Enter your personal details and start journey with us</p>
                <button id="signUp" class="overlay_btn" onclick='location.href = "signUp.jsp"'>Sign Up</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
