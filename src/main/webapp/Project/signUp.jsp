
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! String error=""; %>
<%
    if (session.toString()!=null){
        error = (String) session.getAttribute("error");
        if (error==null){
            error="";
            session.invalidate();
        }
    }
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="assets/css/signUp.css">
    <script src="assets/js/signUp.js"></script>
    <script src="assets/js/passwordCheck.js"></script>
</head>
<body>

<div id="form-container">
    <div id="form-inner-container">
        <!-- Sign up form -->
        <div id="sign-up-container">
            <h3>Get Started</h3>
            <form action="signUp" method="post" name="signUpForm">
                <span style="color: red"><%= error%></span>
                <br><br>
                <label for="id">id</label>
                <input type="text" name="id" id="id" placeholder="id">


                <label for="password">Password</label>
                <input type="password" name="password" id="password">

                <input type="checkbox" name="producer" id="producer">
                <label for="producer">판매자로 가입하시갰습니까?</label>

                <br><br>

                <div id="form-controls">
                    <button type="button" onclick="checkPassword()">Sign Up</button>
                </div>


            </form>
        </div>



        <!-- Lottie animation -->
        <div id="animation-container">
            <lottie-player src="https://assets3.lottiefiles.com/packages/lf20_aesgckiv.json"  background="transparent"  speed="1"  style="width: 520px; height: 520px;" loop autoplay></lottie-player>
        </div>

    </div>
</div>



<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<script type="text/JavaScript" src="./my-script.js"></script>

</body>
</html>
