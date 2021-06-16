package com.SaleHouse.Dao.impl;

import com.SaleHouse.Dao.HouseDao;
import org.junit.jupiter.api.Test;


import java.sql.Date;

import static org.junit.jupiter.api.Assertions.*;

class HouseDaoimplTest {

    private HouseDao houseDao = new HouseDaoimpl();
    @Test
    void getHouse() {
    }

    @Test
    void addHouse() {
    }

    @Test
    void deleteHouse() {
    }

    @Test
    void editHouse() {
    }

    @Test
    void findHouse() {
        System.out.println(houseDao.FindHouse(1));
    }
}