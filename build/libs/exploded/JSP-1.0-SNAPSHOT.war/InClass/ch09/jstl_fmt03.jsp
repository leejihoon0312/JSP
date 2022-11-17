<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Internationalization</title>
</head>
<body>
	<p> <jsp:useBean id="now" class="java.util.Date" />
	<p> 1. <fmt:formatDate value="${now}" type="date" />
	<p> 2. <fmt:formatDate value="${now}" type="time" />
	<p> 3. <fmt:formatDate value="${now}" type="both" />
	<p> 4. <fmt:formatDate value="${now}" type="both" dateStyle="default" 	timeStyle="default" />
	<p> 5. <fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short" />
	<p> 6. <fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium" />
	<p> 7. <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long" />
	<p> 8. <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" />
	<p> 9. <fmt:formatDate value="${now}" type="both" pattern="yyyy년MM월dd일 HH시mm분ss초 E요일" />
</body>
</html>