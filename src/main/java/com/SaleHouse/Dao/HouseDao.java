package com.SaleHouse.Dao;

import com.SaleHouse.Entity.House;

import java.util.List;

public interface HouseDao {
    public List<House>getHouse();

    public void AddHouse(House house);

    public void DeleteHouse(House house);

    public void EditHouse(House house);

    public House FindHouse(int houseid);
}
