<%@ page contentType="text/html; charset=utf-8"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>Internationalization</title>
</head>
<body>
	<h3>현재 로케일의 국가, 날짜, 통화</h3>
	<%
		Locale locale = request.getLocale();
		Date currentDate = new Date();
		DateFormat dateFormat1 = DateFormat.getDateInstance(DateFormat.FULL, locale);
		DateFormat dateFormat2 = DateFormat.getDateInstance(DateFormat.MEDIUM, locale);
		NumberFormat numberFormat1 = NumberFormat.getNumberInstance(locale);
		NumberFormat numberFormat2 = NumberFormat.getCurrencyInstance(locale);
		NumberFormat numberFormat3 = NumberFormat.getPercentInstance(locale);

	%>
	<p> 국가 : <%=locale.getDisplayCountry()%>
	<p> 언어 : <%= locale.getLanguage()%>
	<p> 코드 : <%= locale.getCountry()%>
	<p> 날짜 : <%=dateFormat1.format(currentDate)%>
	<p> 날짜 : <%=dateFormat2.format(currentDate)%>
	<p> 숫자 (12345.67) : <%=numberFormat1.format(12345.67)%>
	<p> 숫자 (12345.67) : <%=numberFormat2.format(12345.67)%>
	<p> 숫자 (12345.67) : <%=numberFormat3.format(12345.67)%>
</body>
</html>