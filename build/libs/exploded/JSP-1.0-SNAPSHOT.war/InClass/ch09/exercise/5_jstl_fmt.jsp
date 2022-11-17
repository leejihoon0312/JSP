<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Internationalization</title>
</head>
<body>
<fmt:setLocale value='<%=request.getParameter("language") %>' />
<fmt:setBundle basename="InClass.ch09myBundle" var="bundleContainer" />
<p><a href="?language=ko" >Korean</a>|<a href="?language=en">English</a>

<form>
	<p> <fmt:message bundle="${bundleContainer}" key="id" />
		: <input type="text" name="id">

	<p>	<fmt:message bundle="${bundleContainer}" key="password"/>
		: <input type="text" name="passwd">

	<p><fmt:message bundle="${bundleContainer}" key="button" var="btn"/>
		<input type="submit" value=${btn}>
</form>
</body>
</html>