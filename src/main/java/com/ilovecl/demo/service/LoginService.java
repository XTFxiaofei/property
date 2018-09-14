package com.ilovecl.demo.service;

import com.ilovecl.demo.dto.LoginResult;
import org.springframework.stereotype.Repository;


/**
 * @Author:fly
 * @Description:登录的Service层
 * @Date:16:59 2018/9/14
 */
@Repository
public interface LoginService {

    //    学生登录的接口
    LoginResult studentLogin(String name, String password);

    //    管理员登录的接口
    LoginResult adminLogin(String email, String password);
}
