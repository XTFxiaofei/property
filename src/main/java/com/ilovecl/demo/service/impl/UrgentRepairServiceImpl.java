package com.ilovecl.demo.service.impl;

import com.ilovecl.demo._const.RepairEnum;
import com.ilovecl.demo._const.UrgentRepairEnum;
import com.ilovecl.demo.dao.RepairDao;
import com.ilovecl.demo.dao.UrgentRepairDao;
import com.ilovecl.demo.entity.Repair;
import com.ilovecl.demo.entity.UrgentRepair;
import com.ilovecl.demo.service.UrgentRepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 * 催单Service层的实现
 *
 * @author qiuyongchen
 *         email:qiuych3@mail2.sysu.edu.cn
 *         copyRight:The MIT License (MIT)
 *         Copyright (c) 2016 邱永臣
 *         Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
 *         documentation files (the "Software"), to deal in the Software without restriction, including without limitation
 *         the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and
 *         to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 *         <p>
 *         The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
 *         Software.
 *         <p>
 *         THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 *         WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
 *         OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 *         OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 * @since 2016-05-31 3:51
 */
/**
 * @Author:fly
 * @Description:催单Service层的实现
 * @Date:16:59 2018/9/14
 */
@Service("urgentRepairService")
public class UrgentRepairServiceImpl implements UrgentRepairService {

    @Autowired
    private UrgentRepairDao urgentRepairDao;

    @Autowired
    private RepairDao repairDao;

    @Autowired
    private RepairServiceImpl repairService;

    /**
     * 提交催单
     *
     * @param repairId  催单对应的报修单的编号ID
     * @param studentId 提交催单的学生的编号ID
     * @return 是否成功提交
     */
    @Override
    public boolean submitUrgentRepair(int repairId, int studentId) {

        Repair repair = repairDao.queryById(repairId);

        if (repair.getStatus() == RepairEnum.DELETED_BY_STUDENT.getState()
                || repair.getStatus() == RepairEnum.CONFIRM.getState()
                || repair.getStatus() == RepairEnum.CANCELED_AGREE.getState()) {
            System.out.println("状态不对，不允许提交催单");
            return false;
        }

        // 已经存在该报修单的催单
        if (urgentRepairDao.queryByRepairId(repairId) != null) {
            this.reSubmit(repairId);
            return false;
        }

        urgentRepairDao.add(new UrgentRepair(
                UrgentRepairEnum.CHECK_WAIT.getState(), repairId, studentId,
                new Timestamp(System.currentTimeMillis())));

        return true;
    }

    /**
     * 删除催单
     *
     * @param repairId 催单对应的报修单的编号ID
     * @return 是否成功删除
     */
    @Override
    public boolean deleteUrgentRepair(int repairId) {
        UrgentRepair urgentRepair = urgentRepairDao.queryByRepairId(repairId);

        if (urgentRepair == null)
        {
            return false;
        }

        urgentRepair.setStatus(UrgentRepairEnum.CANCELED_BY_STUDENT.getState());

        urgentRepairDao.delete(urgentRepair);

        return true;
    }

    /**
     * 重新提交催单
     *
     * @param repairId 催单对应的报修单的编号ID
     * @return 是否成功提交
     */
    @Override
    public boolean reSubmit(int repairId) {

        UrgentRepair urgentRepair = urgentRepairDao.queryByRepairId(repairId);

        if (urgentRepair == null)
        {
            return false;
        }

        // 重置创建催单的时间
        urgentRepair.setCreateTime(new Timestamp(System.currentTimeMillis()));
        // 重置状态
        urgentRepair.setStatus(UrgentRepairEnum.CHECK_WAIT.getState());

        urgentRepairDao.update(urgentRepair);

        return true;
    }

    /**
     * 获取某位学生提交的催单
     *
     * @return 所有催单
     */
    @Override
    public List<UrgentRepair> getAllUrgentRepairByStudentId(int studentId) {
        List<UrgentRepair> urgentRepairs = urgentRepairDao.queryByStudentId(studentId);

        Repair repair = null;

        List<UrgentRepair> list = new ArrayList<UrgentRepair>();

        for (UrgentRepair urgentRepair : urgentRepairs) {
            repair = repairService.getRepairById(urgentRepair.getRepairId());

            if (urgentRepair.getStatus() != UrgentRepairEnum.CANCELED_BY_STUDENT.getState()
                    && repair.getStatus() != RepairEnum.DELETED_BY_STUDENT.getState()
                    && repair.getStatus() != RepairEnum.CONFIRM.getState()
                    && repair.getStatus() != RepairEnum.CANCELED_AGREE.getState())
            {
                list.add(urgentRepair);
            }
        }

        return list;
    }

    /**
     * 获取所有“未被查看”且“未被学生删除”的催单
     *
     * @return 所有催单
     */
    @Override
    public List<UrgentRepair> getAllUrgentRepair() {
        List<UrgentRepair> urgentRepairs = urgentRepairDao.queryAll();

        Repair repair = null;

        List<UrgentRepair> list = new ArrayList<UrgentRepair>();

        for (UrgentRepair urgentRepair : urgentRepairs) {
            repair = repairService.getRepairById(urgentRepair.getRepairId());

            if (urgentRepair.getStatus() == UrgentRepairEnum.CHECK_WAIT.getState()
                    && repair.getStatus() != RepairEnum.DELETED_BY_STUDENT.getState()
                    && repair.getStatus() != RepairEnum.CONFIRM.getState()
                    && repair.getStatus() != RepairEnum.CANCELED_AGREE.getState())
            {
                list.add(urgentRepair);
            }
        }

        return list;
    }

    /**
     * 查看催单
     *
     * @param repairId 催单对应的报修单的编号ID
     * @return 是否成功查看
     */
    @Override
    public boolean checkUrgentRepair(int repairId) {
        UrgentRepair urgentRepair = urgentRepairDao.queryByRepairId(repairId);

        // 未处在待查看的状态
        if (urgentRepair.getStatus() != UrgentRepairEnum.CHECK_WAIT.getState()) {
            return false;
        }

        urgentRepair.setStatus(UrgentRepairEnum.CHECK.getState());

        urgentRepairDao.update(urgentRepair);

        return true;
    }
}
