package com.SaleHouse.Dao.impl;

import com.SaleHouse.Dao.UserDao;
import com.SaleHouse.Entity.User;

import java.util.List;

public class UserDaoimpl extends BaseDao implements UserDao {

    @Override
    public List<User> getUser() {
        String sql = "select * from t_user";
        return queryForList(User.class,sql);
    }

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

    @Override
    public void DeleteUser(User user) {
        String sql = "delete from t_user where id=?";
        update(sql,user.getId());
    }

    @Override
    public User FindUser(int userid) {
        String sql = "select * from t_user where id=?";
        return queryForOne(User.class,sql,userid);
    }
}
