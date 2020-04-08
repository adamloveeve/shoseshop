package com.soecode.jt.web;

import com.soecode.jt.dto.AppointExecution;
import com.soecode.jt.dto.Result;
import com.soecode.jt.dto.ShoseAppointExecution;
import com.soecode.jt.entity.Shose;
import com.soecode.jt.entity.ShoseAppointment;
import com.soecode.jt.enums.AppointStateEnum;
import com.soecode.jt.exception.NoNumberException;
import com.soecode.jt.exception.RepeatAppointException;
import com.soecode.jt.service.ShoseService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@Controller
public class ShoseController {
    @Autowired
    private ShoseService service;//持有一个业务层对象
    @ResponseBody
    @RequestMapping("/findall")
    public List<Shose>  findAll() {
        List<Shose> list = service.findAll();
//        model.addAttribute("shoselist", list);
        return list;
    }

    //ajax查询数据
    @ResponseBody
    @RequestMapping("/findbysid")
    public Shose findBySid(@RequestParam("sid") int sid) {
        return service.findByShoseId(sid);
    }

    @RequestMapping(value = "/appoint", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8" })
//    @RequestMapping("/appoint")
    @ResponseBody
    private Result<ShoseAppointExecution> appoint(@RequestParam("shoseId") Long shoseId, @RequestParam("wechat") String wechat) {
        if (wechat == null || wechat.equals("")) {
            return new Result<>(false, "微信号不能为空");
        }
        ShoseAppointExecution execution = null;
        try {
            execution = service.appoint(shoseId, wechat,"","");
        } catch (NoNumberException e1) {
            execution = new ShoseAppointExecution(shoseId, AppointStateEnum.NO_NUMBER);
        } catch (RepeatAppointException e2) {
            execution = new ShoseAppointExecution(shoseId, AppointStateEnum.REPEAT_APPOINT);
        } catch (Exception e) {
            execution = new ShoseAppointExecution(shoseId, AppointStateEnum.INNER_ERROR);
        }
        return new Result<ShoseAppointExecution>(true, execution);

    }
}
