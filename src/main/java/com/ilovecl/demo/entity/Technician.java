package com.ilovecl.demo.entity;

/**
 * @Author:fly
 * @Description:维修人员
 * @Date:16:56 2018/9/14
 */
public class Technician {
    private int id; // 编号
    private String name; // 姓名

    public Technician(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
