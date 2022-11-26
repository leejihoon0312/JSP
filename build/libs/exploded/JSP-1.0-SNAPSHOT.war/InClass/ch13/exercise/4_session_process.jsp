<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-21
  Time: 오후 2:04
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
        session.setAttribute("userID", user_id);
        response.sendRedirect("4_welcome.jsp");
    } else {
        out.println("세션 연결에 실패하였습니다.");
    }
%>
</body>
</html>
