<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.Univ.JSP.InClass.Product.Product"%>
<%@ page import="com.Univ.JSP.InClass.Product.ProductRepository"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>

<%
	String filename="";
	String realFolder = "C:\\Users\\이지훈\\Desktop\\JSP\\src\\main\\webapp\\InClass\\WebMarket\\upload";
	String encType = "utf-8";

	MultipartRequest multipartRequest = new MultipartRequest(request,realFolder,5*1024*1024,encType,new DefaultFileRenamePolicy());




	request.setCharacterEncoding("UTF-8");

//	String productId = request.getParameter("productId");
//	String name = request.getParameter("name");
//	String unitPrice = request.getParameter("unitPrice");
//	String description = request.getParameter("description");
//	String manufacturer = request.getParameter("manufacturer");
//	String category = request.getParameter("category");
//	String unitsInStock = request.getParameter("unitsInStock");
//	String condition = request.getParameter("condition");

	String productId = multipartRequest.getParameter("productId");
	String name = multipartRequest.getParameter("name");
	String unitPrice = multipartRequest.getParameter("unitPrice");
	String description = multipartRequest.getParameter("description");
	String manufacturer = multipartRequest.getParameter("manufacturer");
	String category = multipartRequest.getParameter("category");
	String unitsInStock = multipartRequest.getParameter("unitsInStock");
	String condition = multipartRequest.getParameter("condition");


	Integer price;

	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);

	long stock;

	if (unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);

	Enumeration fileNames = multipartRequest.getFileNames();
	String fname = (String) fileNames.nextElement();
	String filesystemName = multipartRequest.getOriginalFileName(fname);


	ProductRepository dao = ProductRepository.getInstance();

	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setpName(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setFileName(filesystemName);

	dao.addProduct(newProduct);

	response.sendRedirect("Product_Home.jsp");
%>
