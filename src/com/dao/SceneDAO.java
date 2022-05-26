package com.dao;

import com.entity.Scene;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SceneDAO extends DAO{
    public List readScene() {
        List<Scene> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "select * from scene";
            psmt = con.prepareStatement(sql);
            rs = psmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String rank = rs.getString("rank");
                String info = rs.getString("info");
                Scene scene;
                if(rs.getString("img")==null){
                    scene = new Scene(id,name,rank,info);
                }else{
                    scene = new Scene(id,name,rank,info,rs.getString("img"));
                }

                list.add(scene);
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
    public List SearchScene(String searchMess) {
        List<Scene> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "select * from scene where name like '%"+searchMess+"%'";
            psmt = con.prepareStatement(sql);
            rs = psmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String rank = rs.getString("rank");
                String info = rs.getString("info");
                Scene scene;
                if(rs.getString("img")==null){
                    scene = new Scene(id,name,rank,info);
                }else{
                    scene = new Scene(id,name,rank,info,rs.getString("img"));
                }

                list.add(scene);
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

    public void addScene(int id1, String name1,String rank1, String info1, String img1){
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "insert into scene values " +
                    "("+id1+",'"+name1+"','"+rank1+"','"+info1+"','"+img1+"')";
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

    public void editScene(int id1, String name1,String rank1, String info1, String img1){
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "update scene " +
                    "set name='"+name1+"',rank='"+rank1+"',info='"+ info1 +"',img='"+img1+"' "+
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

    public void deleteScene(int id1){
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        checkDriver();

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JspFinal?serverTimezone=UTC", "root", "root");
            String sql = "delete from scene" +
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
