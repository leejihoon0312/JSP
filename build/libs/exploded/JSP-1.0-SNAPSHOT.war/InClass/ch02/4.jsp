<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-17
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
    <title>4</title>
</head>
<%! String word = "Hello, Java Server Pages";
    String getString(String word)
    {
        return word;
    }
%>
<body>
    <% out.print(getString(word)); %>

</body>
</html>
