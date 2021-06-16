package com.SaleHouse.Dao;

import com.SaleHouse.Entity.House;
import com.SaleHouse.Entity.Order;
import com.SaleHouse.Entity.User;
import com.sun.org.apache.xpath.internal.operations.Or;

import java.util.List;

public interface OrderDao {
    public List<Order> getOrder();

    public List<Order> getUserOrder(User user);

    public void AddOrder(Order order);

    public void DeleteOrder(Order order);

}
