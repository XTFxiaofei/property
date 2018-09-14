package com.ilovecl.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * @Author:fly
 * @Description:未登录时首页控制器
 * @Date:17:01 2018/9/14
 */
@Controller
public class indexController {

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    private String index() {
        return "index";
    }
}
