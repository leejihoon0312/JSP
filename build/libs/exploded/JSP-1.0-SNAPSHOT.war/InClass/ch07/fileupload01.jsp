<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-17
  Time: 오후 2:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="fileForm" method="post" action="fileupload01_process.jsp" enctype="multipart/form-data">
    <p>이름: <input type="text" name="name"></p>
    <p>제목: <input type="text" name="subject"></p>
    <p>파일: <input type="file" name="filename"></p>
    <input type="submit" value="전송">
</form>
</body>
</html>
