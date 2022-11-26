<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-21
  Time: 오후 3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String user_id = request.getParameter("id");
    String user_pw = request.getParameter("passwd");

    if (user_id.equals("admin") && user_pw.equals("admin1234")) {
        Cookie cookie_id = new Cookie("userID", user_id);
        response.addCookie(cookie_id);

        response.sendRedirect("3_welcome.jsp");
    } else {
        out.println("쿠키 생성을 실패하였습니다.");
    }
%>
</body>
</html>
