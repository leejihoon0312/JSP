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
<form name="fileForm" method="post" action="3_fileupload01_process.jsp" enctype="multipart/form-data">
    <p>파일: <input type="file" name="filename"></p>
    <input type="submit" value="파일 올리기">
</form>
</body>
</html>
