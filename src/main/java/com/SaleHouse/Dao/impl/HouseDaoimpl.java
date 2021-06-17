package com.SaleHouse.Dao.impl;

import com.SaleHouse.Dao.HouseDao;
import com.SaleHouse.Entity.House;

import java.util.List;

public class HouseDaoimpl extends BaseDao implements HouseDao {
    @Override
    public List<House> getHouse() {
        String sql = "select * from t_house";
        return queryForList(House.class,sql);
    }

    @Override
    public List<House> searchHouse(String keyword) {
        String sql = "select * from t_house where hname like ?";
        return queryForList(House.class,sql,"%"+keyword+"%");
    }

    @Override
    public void AddHouse(House house) {
        String sql = "insert into t_house (hname,hsize,hlocation,hprice,himg) values(?,?,?,?,?)";
        update(sql,house.getHname(),house.getHsize(),house.getHlocation(),house.getHprice(),house.getHimg());
    }

    @Override
    public void DeleteHouse(House house) {
        String sql = "delete from t_house where hid=?";
        update(sql,house.getHid());

    }

    @Override
    public void EditHouse(House house) {
        String sql = "update t_house set hname=?,hsize=?,hlocation=?,hprice=?,himg=? where hid=?";
        update(sql,house.getHname(),house.getHsize(),house.getHlocation(),house.getHprice(),house.getHimg(),house.getHid());
    }

    @Override
    public House FindHouse(int houseid) {
        String sql = "select * from t_house where hid=?";
        return queryForOne(House.class,sql,houseid);
    }
}
