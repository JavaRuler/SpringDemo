package com.winsor.service.impl;

import com.winsor.pojo.Dropdown;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/8/16.
 * @author  Winsor Lei
 * @version 1.0
 */
public interface DropdownService {
    List<Dropdown> selectDropdown(Map<String, Object> map);
}
