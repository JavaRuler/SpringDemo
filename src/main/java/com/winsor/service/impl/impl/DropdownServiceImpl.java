package com.winsor.service.impl.impl;

import com.winsor.dao.DropdownMapper;
import com.winsor.dao.UserMapper;
import com.winsor.pojo.Dropdown;
import com.winsor.pojo.User;
import com.winsor.service.impl.DropdownService;
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
public class DropdownServiceImpl implements DropdownService {

    @Autowired
    DropdownMapper dropdownMapper;

    @Override
    public List<Dropdown> selectDropdown(Map<String,Object> map) {
        return dropdownMapper.selectDropdown(map);
    }
}
