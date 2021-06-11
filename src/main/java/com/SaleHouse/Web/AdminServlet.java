package com.SaleHouse.Web;

import com.SaleHouse.Dao.HouseDao;
import com.SaleHouse.Dao.impl.HouseDaoimpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminServlet", value = "/AdminServlet")
public class AdminServlet extends HttpServlet {
    private HouseDao houseDao = new HouseDaoimpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html:charset=UTF-8");
        request.setAttribute("houses",houseDao.getHouse());
        request.getRequestDispatcher("AdminPage/HouseManage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
