<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-01
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>6</title>
</head>
<body>
<h4>구구단 출력하기</h4>
<jsp:useBean id="bean" class="com.Univ.JSP.InClass.GuGuDan"/>
<%int arr[]=bean.process(5);
    for(int i=0;i<9;i++)
    {
        out.println(5+"*"+(i+1)+"="+arr[i]+"<br>");
    }
%>

</body>
</html>
