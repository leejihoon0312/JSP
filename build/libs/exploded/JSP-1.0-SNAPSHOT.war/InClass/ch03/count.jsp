<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-19
  Time: 오후 3:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int count =0 ;
    void addCount(){
        count++;
    }
%>

<% addCount();%>

<p> <%= count%>번째 방문입니다.