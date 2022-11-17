<%@ page contentType="text/html; charset=utf-8"%> <%-- 디렉티브 태그(page)--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- 디렉티브 태그(taglib)--%>

<!DOCTYPE html>
<html lang="en">
<head>

<%@ include file="static.jsp"%>  <%-- 디렉티브 태그(include)--%>
	<%-- --%>
</head>
<% request.setCharacterEncoding("utf-8");%>  <%-- --%>

<%-- 스크립트 태그(선언문)--%>
<%!
	String location_dong = "";
	String cookie_latitude = "";
	String cookie_longitude = "";
%>

<%-- 쿠키 + 내장객체(request) --%>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("latitude") ){
				cookie_latitude = cookies[i].getValue();
				System.out.println("cookie_latitude = " + cookie_latitude);
			}else if (cookies[i].getName().equals("longitude")){
				cookie_longitude = cookies[i].getValue();
				System.out.println("cookie_longitude = " + cookie_longitude);
			}
		}
	}



%>

<%-- 액션태그(useBean) + 액션태그(setProperty) + 스크립트 태그(스크립틀릿 태그) + 내장객체(request) --%>
<jsp:useBean id="location" class="com.Univ.JSP.Project.location">
	<jsp:setProperty name="location" property="x" value='<%= cookie_longitude %>'/>
	<jsp:setProperty name="location" property="y" value='<%=  cookie_latitude %>'/>
	<% location_dong = location.loadLocation();%>
</jsp:useBean>

<body>

<%@ include file="header.jsp"%>



	<!-- hero area -->
	<div class="hero-area hero-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 offset-lg-2 text-center">
					<div class="hero-text">
						<div class="hero-text-tablecell">
							<p class="subtitle">Customer & Producer</p>
							<h1>Whats Left</h1>
							<div class="hero-btns">
								<%-- 스크립트 태그(표현문)--%>
								<a href='getProducts?location_dong=<%= location_dong %>' class="boxed-btn" >주변가게 둘러보기</a>
									<c:choose>
										<c:when test="${sessionScope.role=='Producer'}">
											<a href="addProduct.jsp?location_dong=<%= location_dong %>" class="bordered-btn">상품 등록하기</a>
										</c:when>
										<c:otherwise>

										</c:otherwise>
									</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end hero area -->

	<br><br><br>
	
	<!-- advertisement section -->
	<div class="abt-section mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<div class="abt-bg">
						<a href="https://www.youtube.com/watch?v=EB7_HS3ooOk" class="video-play-btn popup-youtube"><i class="fas fa-play"></i></a>
					</div>
				</div>
				<div class="col-lg-6 col-md-12">
					<div class="abt-text">
						<p class="top-sub">Since Year 2022</p>
						<h2>We are <span class="orange-text">Whats Left</span></h2>
						<p>1인 가구가 많아지는 요즘, 20·30세대를 위해 마감 음식 세일 패킹 서비스를 제공하는 웹 사이트입니다. 사이트를 통해 점주는 음식 폐기의 비용 부담절약과 동시에 수익을 창출할 수 있고, 고객은 합리적 가격에 원하는 음식을 구매할 수 있습니다.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end advertisement section -->

<%@ include file="footer.jsp"%>

</body>
</html>