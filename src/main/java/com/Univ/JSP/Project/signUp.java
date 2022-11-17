package com.Univ.JSP.Project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@WebServlet("/Project/signUp")
public class signUp  extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String role="User";


        // db에 저장하기 위한 데이터
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        //String pro = request.getParameter("producer");
        String[] producers = request.getParameterValues("producer");

        if (producers!=null){
            role="Producer";
        }

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

            String sql = "SELECT id FROM User WHERE id=?"; // 실행할 sql

            pstmt = (PreparedStatement) con.prepareStatement(sql); // PreparedStatement
            pstmt.setString(1, id); // 첫 번째 물음표에 해당하는 값
            //pstmt.setString(2,password); // 두 번째 물음표에 해당하는 값

            ResultSet result = pstmt.executeQuery(); // sql문을 가지고 통신. return 값은 행의 수와 같은 int 값

            if(result.next()){
                HttpSession session = request.getSession();
                session.setAttribute("error", "이미 존재하는 아이디입니다! ");
                response.sendRedirect("signUp.jsp");
            } else{
                sql = "INSERT INTO User(id,password,role) VALUES (?,?,?)"; // 실행할 sql

                pstmt = (PreparedStatement) con.prepareStatement(sql); // PreparedStatement
                pstmt.setString(1, id); // 첫 번째 물음표에 해당하는 값
                pstmt.setString(2,password); // 두 번째 물음표에 해당하는 값
                pstmt.setString(3,role);

                int rs = pstmt.executeUpdate(); // sql문을 가지고 통신. return 값은 행의 수와 같은 int 값
                if (rs==1){
                    response.sendRedirect("login");
                }
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
