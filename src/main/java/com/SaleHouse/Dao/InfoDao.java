package com.SaleHouse.Dao;

import com.SaleHouse.Entity.House;
import com.SaleHouse.Entity.HouseInfo;
import sun.plugin.dom.core.Element;


public interface InfoDao {

    public  HouseInfo findHouseInfo(int id);

    public void AddHouseInfo(HouseInfo houseInfo);

    public void EditHouseInfo(HouseInfo houseInfo);

}
