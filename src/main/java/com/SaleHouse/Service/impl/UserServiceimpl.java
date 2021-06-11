package com.SaleHouse.Service.impl;

import com.SaleHouse.Dao.UserDao;
import com.SaleHouse.Dao.impl.UserDaoimpl;
import com.SaleHouse.Entity.User;
import com.SaleHouse.Service.UserService;

public class UserServiceimpl implements UserService {
    private UserDao userDao = new UserDaoimpl();
    @Override
    public void register(User user) {
        userDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        return userDao.queryUserByUsernamePassword(user.getUsername(),user.getPassword());
    }

    @Override
    public boolean checkexist(String username) {
        if(userDao.queryUserByUsername(username)==null){
            return false;
        }else{
            return true;
        }
    }
}
