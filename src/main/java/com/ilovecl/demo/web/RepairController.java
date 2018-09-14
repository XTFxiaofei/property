package com.ilovecl.demo.web;

import com.ilovecl.demo.entity.Repair;
import com.ilovecl.demo.service.RepairService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author:fly
 * @Description:报修单的web层
 * @Date:17:01 2018/9/14
 */
@Controller
@RequestMapping("/repair")
public class RepairController {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private RepairService repairService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<Repair> list = repairService.getRepqirByStudentId(1);

        model.addAttribute("list", list);

        return "list";
    }

    @RequestMapping(value = "/{repairId}/detail", method = RequestMethod.GET)
    public String detail(@PathVariable("rapairId") int repairId, Model model) {
        Repair repair = repairService.getRepairById(repairId);

        model.addAttribute("repair", repair);

        return "detail";
    }
}
