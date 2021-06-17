package com.SaleHouse.Web;


import com.SaleHouse.Dao.HouseDao;
import com.SaleHouse.Dao.InfoDao;

import com.SaleHouse.Dao.impl.HouseDaoimpl;
import com.SaleHouse.Dao.impl.InfoDaoimpl;

import com.SaleHouse.Entity.HouseInfo;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DetailServlet", value = "/DetailServlet")
public class DetailServlet extends HttpServlet {
    private InfoDao infoDao = new InfoDaoimpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        int id = Integer.valueOf(request.getParameter("id"));
        HouseInfo houseInfo = infoDao.findHouseInfo(id);
        request.setAttribute("houseInfo", houseInfo);
        if (houseInfo == null)
            response.sendRedirect("houseList.jsp");
        else
            request.getRequestDispatcher("houseinfo.jsp").forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
