package com.dao;

import com.entity.Food;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FoodDAO extends DAO{
    public List readFood() {
        List<Food> list = new ArrayList<>();
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
            String sql = "select * from food";
            psmt = con.prepareStatement(sql);
            rs = psmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String Feature = rs.getString("Feature");
                String info = rs.getString("info");
                Food food;
                if(rs.getString("img")==null){
                    food = new Food(id,name,Feature,info);
                }else{
                    food = new Food(id,name,Feature,info,rs.getString("img"));
                }

                list.add(food);
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
    public List SearchFood(String searchMess) {
        List<Food> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        checkDriver();

        try {

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "select * from food where name like '%"+searchMess+"%'";

//            String sql = "select * from food where id = "+searchMess;
            psmt = con.prepareStatement(sql);
            rs = psmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String Feature = rs.getString("Feature");
                String info = rs.getString("info");
                Food food;
                if(rs.getString("img")==null){
                    food = new Food(id,name,Feature,info);
                }else{
                    food = new Food(id,name,Feature,info,rs.getString("img"));
                }

                list.add(food);
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

    public void addFood(int id1, String name1, String feature1,String info1, String img1){
        Connection con = null;
        PreparedStatement psmt = null;
        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "insert into food values " +
                    "("+id1+",'"+name1+"','"+feature1+"','"+info1+"','"+img1+"')";
//            System.out.println(name1+" "+status1);
//            System.out.println(sql);
            psmt = con.prepareStatement(sql);
            psmt.executeUpdate();

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

    public void editFood(int id1, String name1,String feature1, String info1, String img1){
        Connection con = null;
        PreparedStatement psmt = null;

        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "update food " +
                    "set name='"+name1+"',feature='"+feature1+"',info='"+ info1 +"',img='"+img1+"' "+
                    "where id = "+ id1;
//            System.out.println(sql);
            psmt = con.prepareStatement(sql);
            psmt.executeUpdate();

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

    public void deleteFood(int id1){
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "delete from food" +
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
