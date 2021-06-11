package com.SaleHouse.Dao;

import com.SaleHouse.Entity.User;

public interface UserDao {
    public User queryUserByUsername(String username);

    public int saveUser(User user);

    public  User queryUserByUsernamePassword(String username,String password);
}
