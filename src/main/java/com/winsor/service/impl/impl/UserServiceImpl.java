package com.winsor.service.impl.impl;

import com.winsor.dao.UserMapper;
import com.winsor.pojo.User;
import com.winsor.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/8/16.
 * @author Wisnor Lei
 * @version 1.0
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> selectUser(Map<String,Object> map) {
        return userMapper.selectUser(map);
    }
}
