package com.SaleHouse.Web;

import com.SaleHouse.Dao.HouseDao;
import com.SaleHouse.Dao.OrderDao;
import com.SaleHouse.Dao.UserDao;
import com.SaleHouse.Dao.impl.HouseDaoimpl;
import com.SaleHouse.Dao.impl.OrderDaoimpl;
import com.SaleHouse.Dao.impl.UserDaoimpl;
import com.SaleHouse.Entity.House;
import com.SaleHouse.Entity.Order;
import com.SaleHouse.Entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "OrderServlet", value = "/OrderServlet")
public class OrderServlet extends HttpServlet {
    HouseDao houseDao = new HouseDaoimpl();
    UserDao userDao = new UserDaoimpl();
    OrderDao orderDao = new OrderDaoimpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = String.valueOf(request.getParameter("action"));
        if(action.equals("add")){
            String username = request.getParameter("username");
            int hid = Integer.valueOf(request.getParameter("hid"));
            User user = userDao.queryUserByUsername(username);
            House house = houseDao.FindHouse(hid);
            Order order = new Order(null,house.getHname(),user.getId(),hid,house.getHprice(),new Date());
            orderDao.AddOrder(order);
            request.setAttribute("username",username);
            request.setAttribute("houses",houseDao.getHouse());
            request.getRequestDispatcher("houseList.jsp").forward(request, response);
        }else if(action.equals("delete")){
            int orderid = Integer.valueOf(request.getParameter("orderid"));
            orderDao.DeleteOrder(orderDao.FindOrder(orderid));
            request.setAttribute("orders",orderDao.getOrder());
            request.getRequestDispatcher("AdminPage/orderlist.jsp").forward(request, response);
        }else if(action.equals("find")){
            String username = request.getParameter("username");
            request.setAttribute("username",username);
            request.setAttribute("order",orderDao.getUserOrder(userDao.queryUserByUsername(username)));
            request.getRequestDispatcher("userOrder.jsp").forward(request, response);
        }else if(action.equals("userdelete")){
            int orderid = Integer.valueOf(request.getParameter("orderid"));
            orderDao.DeleteOrder(orderDao.FindOrder(orderid));
            String username = request.getParameter("username");
            request.setAttribute("username",username);
            request.setAttribute("order",orderDao.getUserOrder(userDao.queryUserByUsername(username)));
            request.getRequestDispatcher("userOrder.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
