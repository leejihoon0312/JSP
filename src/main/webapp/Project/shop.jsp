<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.Univ.JSP.Project.Product" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="static.jsp"%>

	<script src="assets/js/loadLocation.js"></script>
</head>
<body>
<% request.setCharacterEncoding("utf-8");%>




<%-- 스크립트 태그(선언문)--%>
<%!
	String location_dong = "";
	String cookie_latitude = "";
	String cookie_longitude = "";
%>

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


<%-- 액션태그(useBean) + 액션태그(setProperty) --%>
<jsp:useBean id="location" class="com.Univ.JSP.Project.location">
	<jsp:setProperty name="location" property="x" value='<%= cookie_longitude %>'/>
	<jsp:setProperty name="location" property="y" value='<%=  cookie_latitude %>'/>
	<% location_dong = location.loadLocation();%>
</jsp:useBean>


<%
	ArrayList<Product> Products = (ArrayList) session.getAttribute("productList");
	ArrayList<Product> listOfProducts = new ArrayList<>();
	if (!location_dong.equals("")){
		for (Product listOfProduct : Products) {
			if(listOfProduct.getLocation().equals(location_dong)){
				listOfProducts.add(listOfProduct);
			}
		}
	}
%>




<%@ include file="header.jsp"%>


	<!-- breadcrumb-section -->
	<div class="breadcrumb-section  hero-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<h1>가게 목록</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- products -->
	<div class="product-section mt-150 mb-150">
		<div class="container">

			<div class="row">
                <div class="col-md-12">
                    <div class="product-filters">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            <li data-filter=".Korean">한식</li>
                            <li data-filter=".Japan">일식</li>
                            <li data-filter=".Western">양식</li>
                        </ul>
                    </div>
					<div class="text-right">
						<form action="loadLocation" method="get" name="getLocation">
							<span id="latitude" hidden></span>
							<span id="longitude" hidden></span>
							<button type="button" class="add-location" onclick="Param()">
								<i class="fa-solid fa-location-crosshairs fa-3x"></i>
							</button>
						</form>
					</div>
                </div>
            </div>

			<div class="row product-lists">
				<%
					Product product=null;
					if (listOfProducts.size()==0){
						for (int i=0; i< Products.size();i++){
							product = Products.get(i);



				%>
				<c:choose>

					<c:when test="${listOfProducts.size()==0}">
					</c:when>

					<c:otherwise>
						<div class="col-lg-4 col-md-6 text-center <%= product.getCategory()%> ">
							<div class="single-product-item">
								<div class="product-image">
									<a href="#"><img src='./assets/img/food/<%= product.getFileName()%>' alt=""></a>
								</div>
								<h3><%= product.getShopName()%></h3>
								<h2><%= product.getProductName()%></h2>
								<p class="product-price"><span><%= product.getDescription()%></span> <%= product.getUnitPrice()%>원 </p>
								<a href='single-product.jsp?productId=<%= product.getProductId()%>' class="cart-btn">주문하기</a>
							</div>
						</div>
					</c:otherwise>
				</c:choose>



				<%
						}
					}else {
				%>




				<%

					for (int i=0; i< listOfProducts.size();i++){
					product = listOfProducts.get(i);

				%>

				<c:choose>

					<c:when test="${listOfProducts.size()==0}">
					</c:when>

					<c:otherwise>
						<div class="col-lg-4 col-md-6 text-center <%= product.getCategory()%> ">
							<div class="single-product-item">
								<div class="product-image">
									<a href="single-product.jsp"><img src='assets/img/food/<%= product.getFileName()%>' alt=""></a>
								</div>
								<h3><%= product.getProductName()%></h3>
								<p class="product-price"><span><%= product.getDescription()%></span> <%= product.getUnitPrice()%>원 </p>
								<a href='single-product.jsp?productId=<%= product.getProductId()%>' class="cart-btn">주문하기</a>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
				<%

						}
					}
				%>


			</div>

		</div>
	</div>
	<!-- end products -->



<%@ include file="footer.jsp"%>
	


</body>
</html>