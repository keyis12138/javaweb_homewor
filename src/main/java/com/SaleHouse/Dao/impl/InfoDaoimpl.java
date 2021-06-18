package com.SaleHouse.Dao.impl;

import com.SaleHouse.Dao.InfoDao;
import com.SaleHouse.Entity.HouseInfo;

public class InfoDaoimpl extends BaseDao implements InfoDao {
    @Override
    public HouseInfo findHouseInfo(int id) {
        String sql = "select * from houseinfo where id=?";
        return queryForOne(HouseInfo.class,sql,id);
    }

    @Override
    public void AddHouseInfo(HouseInfo houseInfo) {
        String sql = "insert into houseinfo (name,price,wysort,jzsort,year,developer,address,state,zxstate,image) values(?,?,?,?,?,?,?,?,?,?)";
        update(sql,houseInfo.getName(),houseInfo.getPrice(),houseInfo.getWysort(),houseInfo.getJzsort(),houseInfo.getYear(),houseInfo.getDeveloper(),houseInfo.getAddress(),houseInfo.getState(), houseInfo.getZxstate(),houseInfo.getImage());
    }

    @Override
    public void EditHouseInfo(HouseInfo houseInfo) {
        String sql = "update houseinfo  set name=?,price=?,wysort=?,jzsort=?,year=?,developer=?,address=?,state=?,zxstate=?,image=? where id=?";
        update(sql,houseInfo.getName(),houseInfo.getPrice(),houseInfo.getWysort(),houseInfo.getJzsort(),houseInfo.getYear(),houseInfo.getDeveloper(),houseInfo.getAddress(),houseInfo.getState(), houseInfo.getZxstate(),houseInfo.getImage(),houseInfo.getId());
    }

}
