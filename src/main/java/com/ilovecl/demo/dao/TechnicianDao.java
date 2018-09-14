package com.ilovecl.demo.dao;

import com.ilovecl.demo.entity.Technician;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author:fly
 * @Description:维修人员DAO层
 * @Date:16:51 2018/9/14
 */
@Mapper
public interface TechnicianDao {
    //    根据ID查询
    Technician queryById(int id);

    List<Technician> queryAll();

    boolean addTechnician(String name);

    boolean delete(int id);

    boolean update(int id, String name);
}
