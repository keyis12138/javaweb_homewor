package com.SaleHouse.Dao.impl;

import com.SaleHouse.Dao.OrderDao;
import com.SaleHouse.Entity.Order;
import com.SaleHouse.Entity.User;

import java.util.List;

public class OrderDaoimpl extends BaseDao implements OrderDao {
    @Override
    public List<Order> getOrder() {
        String sql = "select * from t_order";
        return queryForList(Order.class,sql);
    }

    @Override
    public List<Order> getUserOrder(User user) {
        String sql = "select * from t_order where uid=?";
        return queryForList(Order.class,sql);
    }

    @Override
    public void AddOrder(Order order) {
        String sql = "insert into t_order (oid,oname,uid,hid,price,otime) values(?,?,?,?,?,?)";
        update(sql,order.getOid(),order.getOname(),order.getUid(),order.getHid(),order.getPrice(),order.getOtime());
    }

    @Override
    public void DeleteOrder(Order order) {
        String sql = "delete from t_order where oid=?";
        update(sql,order.getOid());
    }
}
