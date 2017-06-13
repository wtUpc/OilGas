package com.oilgas.service.impl;

import com.oilgas.mapper.UserMapper;
import com.oilgas.model.User;
import com.oilgas.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/5/7.
 */
@Service
public class UserServiceImpl implements UserService {

    private final UserMapper userMapper;

    public UserServiceImpl(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public User selectByName(String userName) {
        try {
            return userMapper.selectByName(userName);
        } catch (Exception e) {
            System.out.println(e);
            return new User();
        }
    }
}
