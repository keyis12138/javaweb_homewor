package com.SaleHouse.Web;

import com.SaleHouse.Dao.HouseDao;
import com.SaleHouse.Dao.InfoDao;
import com.SaleHouse.Dao.impl.HouseDaoimpl;
import com.SaleHouse.Dao.impl.InfoDaoimpl;
import com.SaleHouse.Entity.House;
import com.SaleHouse.Entity.HouseInfo;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.RandomAccess;

@WebServlet(name = "HouseServlet", value = "/HouseServlet")
public class HouseServlet extends HttpServlet {
    private HouseDao houseDao = new HouseDaoimpl();
    private InfoDao infoDao = new InfoDaoimpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String action = String.valueOf(request.getParameter("action"));
        if(action.equals("edit")){
            int houseid = Integer.valueOf(request.getParameter("houseid"));
            House house = houseDao.FindHouse(houseid);
            HouseInfo houseInfo = infoDao.findHouseInfo(houseid);
            request.setAttribute("housesinfo", houseInfo);
            request.setAttribute("houses", house);
            if (house == null)
                response.sendRedirect("AdminPage/houselist2.jsp");
            else
                request.getRequestDispatcher("AdminPage/EditHouse.jsp").forward(request, response);
        }else if(action.equals("delete")){
            int houseid = Integer.valueOf(request.getParameter("houseid"));
            houseDao.DeleteHouse(houseDao.FindHouse(houseid));
            request.setAttribute("houses",houseDao.getHouse());
            request.getRequestDispatcher("AdminPage/houselist2.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String action = String.valueOf(request.getParameter("action"));
        if(action.equals("add")){
            String name = String.valueOf(request.getParameter("name"));
            String size = String.valueOf(request.getParameter("size"));
            String location = String.valueOf(request.getParameter("location"));
            int price = Integer.valueOf(request.getParameter("price"));
            String img = "houseImg/"+String.valueOf(request.getParameter("photoa"));
            House house = new House(null,name,size,location,img,price);
            houseDao.AddHouse(house);

            String imga = "image/"+String.valueOf(request.getParameter("photob"));
            String wysort = String.valueOf(request.getParameter("wysort"));
            String jzsort = String.valueOf(request.getParameter("jzsort"));
            String zxstate = String.valueOf(request.getParameter("zxstate"));
            String year = String.valueOf(request.getParameter("year"));
            String developer = String.valueOf(request.getParameter("developer"));
            String state = "在售";

            HouseInfo houseInfo = new HouseInfo(null,name,price,wysort,jzsort,year,developer,location,state,zxstate,imga);
            infoDao.AddHouseInfo(houseInfo);
            Map<String,Object>resultmap = new HashMap<>();
            resultmap.put("result","success");
            Gson gson = new Gson();
            String resultstr = gson.toJson(resultmap);
            response.getWriter().write(resultstr);
        }else if(action.equals("edit")){
            int houseid = Integer.valueOf(request.getParameter("houseid"));
            String name = String.valueOf(request.getParameter("name"));
            String size = String.valueOf(request.getParameter("size"));
            String location = String.valueOf(request.getParameter("location"));
            int price = Integer.valueOf(request.getParameter("price"));
            String img = "houseImg/"+String.valueOf(request.getParameter("photoa"));
            House house = new House(houseid,name,size,location,img,price);
            houseDao.EditHouse(house);

            String imga = "image/"+String.valueOf(request.getParameter("photob"));
            String wysort = String.valueOf(request.getParameter("wysort"));
            String jzsort = String.valueOf(request.getParameter("jzsort"));
            String zxstate = String.valueOf(request.getParameter("zxstate"));
            String year = String.valueOf(request.getParameter("year"));
            String developer = String.valueOf(request.getParameter("developer"));
            String state = "在售";

            HouseInfo houseInfo = new HouseInfo(houseid,name,price,wysort,jzsort,year,developer,location,state,zxstate,imga);

            infoDao.EditHouseInfo(houseInfo);

            Map<String,Object>resultmap = new HashMap<>();
            resultmap.put("result","success");
            Gson gson = new Gson();
            String resultstr = gson.toJson(resultmap);
            response.getWriter().write(resultstr);
        }

        //request.getRequestDispatcher("AdminServlet").forward(request, response);

    }
}
