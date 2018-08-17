package com.winsor.dao;

import com.winsor.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/8/16.
 * @author Winsor Lei
 * @version 1.0  2018/08/16
 */
@Repository
public interface UserMapper {
    List<User> selectUser(Map<String,Object> map);
}
