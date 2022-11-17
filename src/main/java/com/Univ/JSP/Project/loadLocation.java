package com.Univ.JSP.Project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/Project/loadLocation")
public class loadLocation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String latitude = request.getParameter("latitude");
        String longitude = request.getParameter("longitude");


        Cookie cookie_latitude = new Cookie("latitude",latitude);
        Cookie cookie_longitude = new Cookie("longitude",longitude);
        response.addCookie(cookie_latitude);
        response.addCookie(cookie_longitude);

        response.sendRedirect("shop.jsp");




    }
}
