package com.dao;

import com.entity.LogStatus;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CheckLogDAO extends DAO{
    public List readLogStatus() {
        List<LogStatus> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        checkDriver();

        try {
//            Context context = new InitialContext();
//            Context  contextNeeded=(Context)context.lookup("java:comp/env");
//            DataSource ds=
//                    (DataSource)contextNeeded.lookup("JspFinalConn");//获得连接池。
//            con= ds.getConnection();//使用连接池中的连接。
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "select * from logstatus";
            psmt = con.prepareStatement(sql);
            rs = psmt.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                LogStatus logStatus = new LogStatus(name);
                list.add(logStatus);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }
}
