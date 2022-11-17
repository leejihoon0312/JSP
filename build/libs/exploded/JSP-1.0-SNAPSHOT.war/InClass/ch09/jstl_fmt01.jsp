<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Internationalization</title>
</head>
<body>
	<p>	--------기본 로케일--------
		<fmt:setBundle basename="InClass.myBundle"	var="resourceBundle" />
	<p>	제목 : <fmt:message key="title" bundle="${resourceBundle}" />
	<p>	이름 : <fmt:message key="username"  bundle="${resourceBundle}" />

	<p>	<fmt:message key="title" bundle="${resourceBundle}" var="titleMsg" />
		제목1 : ${titleMsg}
	<p>	<fmt:message key="username" var="userMsg" bundle="${resourceBundle}" />
		이름1 : ${userMsg}

	<p>	한국어 비밀번호 : <fmt:message key="password" bundle="${resourceBundle}" />

	<p>	--------영문 로케일 --------
		<fmt:setLocale value="en" />
		<fmt:setBundle basename="InClass.myBundle" var="resourceBundle" />
	<p>	제목 : <fmt:message key="title" bundle="${resourceBundle}" />
	<p>	이름 : <fmt:message key="username" bundle="${resourceBundle}" />
	<p>	영어 비밀번호 : <fmt:message key="password" bundle="${resourceBundle}" />
</body>
</html>