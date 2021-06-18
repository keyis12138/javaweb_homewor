package com.SaleHouse.Web;

import com.SaleHouse.Dao.HouseDao;
import com.SaleHouse.Dao.impl.HouseDaoimpl;
import com.SaleHouse.Entity.House;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SearchServlet", value = "/SearchServlet")
public class SearchServlet extends HttpServlet {
    private HouseDao houseDao = new HouseDaoimpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String keyword = String.valueOf(request.getParameter("keyword"));
        String username = String.valueOf(request.getParameter("username"));
        request.setAttribute("username",username);
        request.setAttribute("houses",houseDao.searchHouse(keyword));
        request.getRequestDispatcher("houseList.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
