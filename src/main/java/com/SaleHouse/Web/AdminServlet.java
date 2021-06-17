package com.SaleHouse.Web;

import com.SaleHouse.Dao.HouseDao;
import com.SaleHouse.Dao.OrderDao;
import com.SaleHouse.Dao.UserDao;
import com.SaleHouse.Dao.impl.HouseDaoimpl;
import com.SaleHouse.Dao.impl.OrderDaoimpl;
import com.SaleHouse.Dao.impl.UserDaoimpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminServlet", value = "/AdminServlet")
public class AdminServlet extends HttpServlet {
    private HouseDao houseDao = new HouseDaoimpl();
    private OrderDao orderDao =new OrderDaoimpl();
    private UserDao userDao =new UserDaoimpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html:charset=UTF-8");
        String action = request.getParameter("action");
        if(action.equals("order")||action.equals("login")){
            request.setAttribute("orders", orderDao.getOrder());
            request.getRequestDispatcher("AdminPage/orderlist.jsp").forward(request, response);
        }
        if(action.equals("account")){
            request.setAttribute("users",userDao.getUser());
            request.getRequestDispatcher("AdminPage/accountlist.jsp").forward(request,response);
        }
        if(action.equals("house")){
            request.setAttribute("houses",houseDao.getHouse());
            request.getRequestDispatcher("AdminPage/houselist2.jsp").forward(request,response);
        }
        //request.getRequestDispatcher("AdminPage/HouseManage.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
