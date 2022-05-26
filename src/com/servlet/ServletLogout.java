package com.servlet;

import com.entity.LogStatus;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "ServletLogout", value = "/ServletLogout")
public class ServletLogout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null;
        PreparedStatement psmt = null;
        //Session设置登录
        HttpSession session = request.getSession(true);
        LogStatus logStatus = new LogStatus();
        session.setAttribute("logstatus",logStatus);

        logStatus.setName("未登录");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "update logstatus set name='未登录'";
            psmt = con.prepareStatement(sql);
            psmt.executeUpdate();

//            System.out.println("登录状态修改为未登录");


            response.sendRedirect("/JSPFinalWork/index.jsp");



        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {

                if (psmt != null) {
                    psmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

