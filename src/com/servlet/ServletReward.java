package com.servlet;

import com.dao.RewardDAO;
import com.entity.Reward;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;

@WebServlet(name = "ServletReward", value = "/ServletReward")
public class ServletReward extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("deleteId"));
        RewardDAO dao = new RewardDAO();
        dao.deleteReward(id);
        response.sendRedirect("/JSPFinalWork/Experience.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("editId"));
        String name = new String(request.getParameter("name").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
        String level = new String(request.getParameter("level").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
//        System.out.println(name+" "+status);
        RewardDAO dao = new RewardDAO();
        List<Reward> list = dao.readReward();
        boolean flag = false; //还没有指定id的内容
        for (Reward s : list) {
//            System.out.println(s.getId());
            if (s.getId() == id) {
                flag = true;
                break;
            }
        }
        if (flag) { //编辑
            dao.editReward(id, name, level);
        } else { //添加
            dao.addReward(id, name, level);
        }
        response.sendRedirect("/JSPFinalWork/Experience.jsp");
    }
}
