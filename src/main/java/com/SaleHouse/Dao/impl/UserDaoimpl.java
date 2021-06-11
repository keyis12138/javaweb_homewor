package com.SaleHouse.Dao.impl;

import com.SaleHouse.Dao.UserDao;
import com.SaleHouse.Entity.User;

public class UserDaoimpl extends BaseDao implements UserDao {

    @Override
    public User queryUserByUsername(String username) {
        String sql="select * from t_user where username=?";
        return queryForOne(User.class,sql,username);
    }

    @Override
    public int saveUser(User user) {
        String sql = "insert into t_user (username,password,email,type) values(?,?,?,?)";
        return update(sql,user.getUsername(),user.getPassword(),user.getEmail(),user.getType());
    }

    @Override
    public User queryUserByUsernamePassword(String username, String password) {
        String sql="select * from t_user where username=? and password=?";
        return queryForOne(User.class,sql,username,password);
    }
}
