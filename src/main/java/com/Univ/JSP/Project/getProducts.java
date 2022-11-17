package com.Univ.JSP.Project;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.UUID;

@WebServlet("/Project/getProducts")
public class getProducts extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


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

            String sql = "SELECT * FROM product"; // 실행할 sql

            pstmt = (PreparedStatement) con.prepareStatement(sql); // PreparedStatement


            ResultSet result = pstmt.executeQuery(); // sql문을 가지고 통신. return 값은 행의 수와 같은 int 값

            ArrayList<Product> arrayList = new ArrayList<>();
            while (result.next()){

                Product product = new Product();
                product.setProductId(result.getString("productId"));
                product.setProductName(result.getString("productName"));
                product.setUnitPrice(Integer.parseInt(result.getString("unitPrice")));
                product.setUnitsInStock(Long.parseLong(result.getString("unitsInStock")));
                product.setDescription(result.getString("description"));
                product.setProducerId(result.getString("producerId"));
                product.setFileName(result.getString("originalFileName"));
                product.setLocation(result.getString("location"));
                product.setCategory(result.getString("category"));
                product.setShopName(result.getString("shopName"));
                arrayList.add(product);
            }



            // 내장객체 request, response, session
            if(!result.next()){
                HttpSession session = request.getSession();
                session.setAttribute("productList",arrayList);
                response.sendRedirect("shop.jsp");
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
