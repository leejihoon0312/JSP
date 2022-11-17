package com.Univ.JSP.Project;

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
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/Project/Reservations")
public class getReservations extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String reserveUser = request.getRemoteUser();
        String sql="";



        if (reserveUser.equals("user")){
            sql = "SELECT * FROM reservation WHERE reserveUser = ? "; // 실행할 sql
        }else {
            sql = "SELECT * FROM reservation WHERE producerId = ? "; // 실행할 sql
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



            pstmt = (PreparedStatement) con.prepareStatement(sql); // PreparedStatement
            pstmt.setString(1, reserveUser);


            ResultSet result = pstmt.executeQuery(); // sql문을 가지고 통신. return 값은 행의 수와 같은 int 값

            ArrayList<ReceiveList> arrayList = new ArrayList<>();
            while (result.next()){

                ReceiveList receiveList = new ReceiveList();
                receiveList.setProductName(result.getString("productName"));
                receiveList.setProductId(result.getString("productId"));
                receiveList.setReserveUser(result.getString("reserveUser"));
                receiveList.setReserveAmount(result.getString("reserveAmount"));
                receiveList.setProducerId(result.getString("producerId"));


                arrayList.add(receiveList);
            }

            System.out.println("result = " + result);


            if(!result.next()){
                HttpSession session = request.getSession();
                session.setAttribute("receiveList",arrayList);
                response.sendRedirect("reservationList.jsp");
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
