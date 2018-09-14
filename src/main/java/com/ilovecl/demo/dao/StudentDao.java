package com.ilovecl.demo.dao;

import com.ilovecl.demo.entity.Student;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author:fly
 * @Description:学生DAO层
 * @Date:16:51 2018/9/14
 */
@Mapper
public interface StudentDao {
    //    根据ID查询
    Student queryById(int id);

    //    根据邮箱查询
    Student queryByEmail(String email);

    //    根据名字查询
    Student queryByName(String name);

    //    查询所有学生
    List<Student> queryAll();

    //    增加一个学生
    int add(Student student);

    //    删除一个学生
    int delete(Student student);

    //    更新一个学生
    int update(Student oldStudent);
}
