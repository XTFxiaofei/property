package com.ilovecl.demo.util;

import com.ilovecl.demo.interceptor.AdminSessionInterceptor;
import com.ilovecl.demo.interceptor.StudentSessionInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.ArrayList;
/**
 * @Author:fly
 * @Description:  拦截器
 * @Date:1:15 2018/9/15
 */
@Configuration
public class WebMvcConfig  implements WebMvcConfigurer {


    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        registry.addInterceptor(new AdminSessionInterceptor())
                /** 把admin所有url添加拦截 */
                .addPathPatterns("/admin/**")
                /** 去掉某个url的拦截 */
                .excludePathPatterns("/admin/login")
                .excludePathPatterns("/admin/");

         registry.addInterceptor(new StudentSessionInterceptor())
                 .addPathPatterns("/student/**")
                 .excludePathPatterns("/student/register")
                 .excludePathPatterns("/student/")
                 .excludePathPatterns("/student/login");
    }



}
