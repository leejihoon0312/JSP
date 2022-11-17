package com.Univ.JSP.Project;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.UUID;

@WebServlet("/Project/storeProduct")
public class storeProduct extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String realFolder = "C:\\Users\\이지훈\\Desktop\\JSP\\src\\main\\webapp\\Project\\assets\\img\\upload";
        String encType = "utf-8";

        MultipartRequest multipartRequest = new MultipartRequest(request,realFolder,5*1024*1024,encType,new DefaultFileRenamePolicy());

        // db에 저장하기 위한 데이터 (사진)
        Enumeration fileNames = multipartRequest.getFileNames();
        String fileName = (String) fileNames.nextElement();
        String originalFileName = multipartRequest.getOriginalFileName(fileName);

        // db에 저장하기 위한 데이터 (일반)
        String productId = UUID.randomUUID().toString();
        String productName = multipartRequest.getParameter("productName");
        String unitPrice = multipartRequest.getParameter("unitPrice");
        String unitsInStock = multipartRequest.getParameter("unitsInStock");
        String description = multipartRequest.getParameter("description");
        String producerId = multipartRequest.getParameter("producerId");
        String location = multipartRequest.getParameter("location");
        String category = multipartRequest.getParameter("category");
        String shopName = multipartRequest.getParameter("shopName");


        // driver loading을 위한 기본 정보
        String database = "jsp"; // db이름

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost/" + database;
        String databaseId = "root";
        String databasePassword = "1234";

        // 연결을 위한 Connection 객체
        Connection con = null;

        // 통신하기 위한 PreparedStatement 객체
        PreparedStatement pstmt = null;

        try{
            Class.forName(driver); // driver loading

            con = (Connection) DriverManager.getConnection(url, databaseId, databasePassword); // connection

            String sql = "INSERT INTO product VALUES (?,?,?,?,?,?,?,?,?,?)"; // 실행할 sql

            pstmt = (PreparedStatement) con.prepareStatement(sql); // PreparedStatement
            pstmt.setString(1, productId); // 첫 번째 물음표에 해당하는 값
            pstmt.setString(2, productName);
            pstmt.setString(3, unitPrice);
            pstmt.setString(4, unitsInStock);
            pstmt.setString(5, description);
            pstmt.setString(6, producerId);
            pstmt.setString(7, originalFileName);
            pstmt.setString(8, location);
            pstmt.setString(9, category);
            pstmt.setString(10, shopName );

            int result = pstmt.executeUpdate(); // sql문을 가지고 통신. return 값은 행의 수와 같은 int 값


            ArrayList<Product> arrayList = new ArrayList<>();
            Product product = new Product();
            product.setProductId(productId);
            product.setProductName(productName);
            product.setUnitPrice(Integer.parseInt(unitPrice));
            product.setUnitsInStock(Long.parseLong(unitsInStock));
            product.setDescription(description);
            product.setProducerId(producerId);
            product.setFileName(originalFileName);
            product.setCategory(category);
            product.setLocation(location);
            product.setShopName(shopName);

            arrayList.add(product);


            if(result==1){
                response.sendRedirect("index.jsp");
            } else{

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {  // 자원을 썼으면 해제해주어야함. 그걸 위한 finally
            try{
                if(pstmt != null) pstmt.close();
                if(con != null) con.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }




    }
}
