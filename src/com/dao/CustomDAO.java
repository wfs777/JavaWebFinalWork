package com.dao;

import com.entity.Custom;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomDAO extends DAO {

    public List readCustom() {
        List<Custom> list = new ArrayList<>();
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
            String sql = "select * from custom";
            psmt = con.prepareStatement(sql);
            rs = psmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String classify = rs.getString("classify");
                String info = rs.getString("info");
                Custom custom;
                if(rs.getString("img")==null){
                    custom = new Custom(id,classify,name,info);
                }else{
                    custom = new Custom(id,name,classify,info,rs.getString("img"));
                }

                list.add(custom);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
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
        return list;
    }
    public List SearchCustom(String searchMess) {
        List<Custom> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;

        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "select * from custom where name like '%"+searchMess+"%' or classify like '%"+searchMess+"%'";
            psmt = con.prepareStatement(sql);
            rs = psmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String classify = rs.getString("classify");
                String info = rs.getString("info");
                Custom custom;
                if(rs.getString("img")==null){
                    custom = new Custom(id,classify,name,info);
                }else{
                    custom = new Custom(id,name,classify,info,rs.getString("img"));
                }

                list.add(custom);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
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
        return list;
    }
    public void addCustom(int id1, String name1,String classify1, String info1, String img1){
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;

        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "insert into custom values " +
                    "("+id1+",'"+name1+"','"+classify1+"','"+info1+"','"+img1+"')";
//            System.out.println(name1+" "+status1);
//            System.out.println(sql);
            psmt = con.prepareStatement(sql);
            psmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
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

    public void editCustom(int id1, String name1,String classify1, String info1, String img1){
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "update custom " +
                    "set name='"+name1+"',classify='"+classify1+"',info='"+ info1 +"',img='"+img1+"' "+
                    "where id = "+ id1;
//            System.out.println(sql);
            psmt = con.prepareStatement(sql);
            psmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
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

    public void deleteCustom(int id1){
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "delete from custom" +
                    " where id = "+id1;
            psmt = con.prepareStatement(sql);
            psmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
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
