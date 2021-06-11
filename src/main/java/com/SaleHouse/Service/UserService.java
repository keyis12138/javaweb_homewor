package com.SaleHouse.Service;

import com.SaleHouse.Entity.User;

public interface UserService {
    public void register(User user);

    public User login(User user);

    public boolean checkexist(String username);

}
