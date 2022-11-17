<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.Univ.JSP.Project.Product" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="static.jsp"%>
	<script>
		function checkReservation() {


			var form = document.reservationForm;


			if (confirm("예약 하시겠습니까?")) {
				alert("예약 되었습니다.")
			} else {
				alert("예약을 취소했습니다.")
				return false;
			}


			form.submit();
		}
	</script>

</head>
<body>

<%@ include file="header.jsp"%>
<%--스크립트 태그(선언문)--%>
<%!
	Product product;
%>
<%--스크립트 태그(스크립틀릿 태그)--%>
<%
	String id = request.getParameter("productId");

	ArrayList<Product> listOfProducts = (ArrayList) session.getAttribute("productList");
	System.out.println("listOfProducts.size() = " + listOfProducts.size());
	for (Product listOfProduct : listOfProducts) {
		if (listOfProduct.getProductId().equals(id)){
			product = listOfProduct;
		}
	}
%>
	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section hero-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<h1>상세 정보</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- single product -->
	<div class="single-product mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="single-product-img">
						<img src='./assets/img/food/<%=product.getFileName()%>' alt="">
					</div>
				</div>
				<div class="col-md-7">
					<div class="single-product-content">
						<%--스크립트 태그(표현문 태그)--%>
						<h3><%= product.getShopName()%></h3>
						<h2><%=product.getProductName()%></h2>
						<p class="single-product-pricing"><%=product.getUnitPrice()%>원</p>
						<p> <%=product.getDescription()%></p>
						<p>재고 수량: <%= product.getUnitsInStock()%></p>
						<div class="single-product-form">
							<form action="reservation" name="reservationForm">
								<input type="number" placeholder="0" name="reserveAmount">
								<br><br>
								<input type="hidden" name="reserveUser" value='<%= request.getRemoteUser()%>'>
								<input type="hidden" name="productId" value='<%= product.getProductId()%>'>
								<input type="hidden" name="productName" value='<%=product.getProductName()%>'>
								<input type="hidden" name="producerId" value='<%=product.getProducerId()%>'>
								<button type="button" class="add-button" onclick="checkReservation()">예약하기</button>
							</form>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end single product -->



<%@ include file="footer.jsp"%>


</body>
</html>