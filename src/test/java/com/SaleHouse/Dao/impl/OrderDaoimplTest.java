package com.SaleHouse.Dao.impl;

import com.SaleHouse.Dao.OrderDao;
import com.SaleHouse.Entity.Order;
import org.junit.jupiter.api.Test;

import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class OrderDaoimplTest {
    OrderDao orderDao = new OrderDaoimpl();
    @Test
    void getOrder() {
        List<Order> orders = orderDao.getOrder();
        for (Order order:orders) {
            System.out.println(order);

        }
    }

    @Test
    void getUserOrder() {
    }

    @Test
    void addOrder() {
        Order order = new Order(null,"aa",1,1,32000,new Date());
        orderDao.AddOrder(order);
    }

    @Test
    void deleteOrder() {
    }
}