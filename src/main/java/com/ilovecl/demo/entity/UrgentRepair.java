package com.ilovecl.demo.entity;

import java.sql.Timestamp;


/**
 * @Author:fly
 * @Description:催单
 * @Date:16:56 2018/9/14
 */
public class UrgentRepair {
    private int id; // 催单编号
    private int status; // 催单状态
    private int repairId; // 催单对应的报修单编号
    private int studentId; // 提交催单的学生的编号
    private Timestamp createTime; // 催单创建的时间

    public UrgentRepair(int repairId) {
        this.repairId = repairId;
    }

    public UrgentRepair(Integer id, Integer status, Integer repairId, Integer studentId, Timestamp createTime) {
        this.id = id;
        this.status = status;
        this.repairId = repairId;
        this.studentId = studentId;
        this.createTime = createTime;
    }

    public UrgentRepair(Integer status, Integer repairId, Integer studentId, Timestamp createTime) {
        this.status = status;
        this.repairId = repairId;
        this.studentId = studentId;
        this.createTime = createTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getRepairId() {
        return repairId;
    }

    public void setRepairId(int repairId) {
        this.repairId = repairId;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }
}
