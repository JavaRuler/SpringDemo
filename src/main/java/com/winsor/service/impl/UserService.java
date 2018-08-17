package com.winsor.service.impl;

import com.winsor.pojo.User;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/8/16.
 * @author  Winsor Lei
 * @version 1.0
 */
public interface UserService {
    List<User> selectUser(Map<String,Object> map);
}
