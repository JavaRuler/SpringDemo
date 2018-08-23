package com.winsor.controller;

import com.winsor.pojo.Dropdown;
import com.winsor.pojo.User;
import com.winsor.service.impl.DropdownService;
import com.winsor.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/8/16.
 * @author Winsor Lei
 * @version 1.0
 */
@Controller
@RequestMapping("")
public class DropdownController {
    @Autowired
    DropdownService dropdownService;

    @RequestMapping("dropdown")
    public String dropdown(Model model, HttpSession session, String id) {

        Map<String, Object> map = new HashMap<>();
        map.put("id", id);

        List<Dropdown> dropdowns = dropdownService.selectDropdown(map);
        model.addAttribute("dropdowns", dropdowns);
        return "dropdown";

    }

}