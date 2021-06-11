package com.SaleHouse.Web;

import com.SaleHouse.Dao.HouseDao;
import com.SaleHouse.Dao.impl.HouseDaoimpl;
import com.SaleHouse.Entity.House;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "HouseServlet", value = "/HouseServlet")
public class HouseServlet extends HttpServlet {
    private HouseDao houseDao = new HouseDaoimpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = String.valueOf(request.getParameter("name"));
        String size = String.valueOf(request.getParameter("size"));
        String location = String.valueOf(request.getParameter("location"));
        int price = Integer.valueOf(request.getParameter("pricce"));
        String img = "houseImg/"+String.valueOf(request.getParameter("photo"));

        House house = new House(null,name,size,location,img,price);
        houseDao.AddHouse(house);
        Map<String,Object>resultmap = new HashMap<>();
        resultmap.put("result","success");
        Gson gson = new Gson();
        String resultstr = gson.toJson(resultmap);
        response.getWriter().write(resultstr);
        //request.getRequestDispatcher("AdminServlet").forward(request, response);

    }
}
