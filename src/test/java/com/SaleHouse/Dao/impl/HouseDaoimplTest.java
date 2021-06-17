package com.SaleHouse.Dao.impl;

import com.SaleHouse.Dao.HouseDao;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class HouseDaoimplTest {
    HouseDao houseDao = new HouseDaoimpl();
    @Test
    void searchHouse() {
        System.out.println(houseDao.searchHouse("大"));
    }
}