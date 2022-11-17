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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.UUID;

@WebServlet("/Project/reservation")
public class reservation extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String productId = request.getParameter("productId");
        String reserveUser = request.getParameter("reserveUser");
        String reserveAmount = request.getParameter("reserveAmount");
        String productName = request.getParameter("productName");
        String producerId = request.getParameter("producerId");


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

            String sql = "INSERT INTO reservation VALUES (?,?,?,?,?,?)"; // 실행할 sql

            pstmt = (PreparedStatement) con.prepareStatement(sql); // PreparedStatement
            pstmt.setString(1, UUID.randomUUID().toString());
            pstmt.setString(2, reserveUser);
            pstmt.setString(3, productId);
            pstmt.setString(4, productName);
            pstmt.setString(5, reserveAmount);
            pstmt.setString(6, producerId);

            int result = pstmt.executeUpdate(); // sql문을 가지고 통신.




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
