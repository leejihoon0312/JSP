<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<%@ include file="static.jsp"%>

</head>
<% request.setCharacterEncoding("utf-8");%>


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
								<a href="getProducts" class="boxed-btn" >주변가게 둘러보기</a>
								<c:choose>

									<c:when test="${isLogin eq 'admin'}">
										<a href="addProduct.jsp" class="bordered-btn">상품 등록하기</a>
									</c:when>

									<c:otherwise> </c:otherwise>

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