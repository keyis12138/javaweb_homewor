package com.SaleHouse.Dao;

import com.SaleHouse.Entity.User;

import java.util.List;

public interface UserDao {
    public List<User> getUser();

    public User queryUserByUsername(String username);

    public int saveUser(User user);

    public  User queryUserByUsernamePassword(String username,String password);

    public void DeleteUser(User user);

    public User FindUser(int userid);
}
