package com.soecode.jt.service;
import com.soecode.jt.dto.AppointExecution;
import com.soecode.jt.dto.ShoseAppointExecution;
import com.soecode.jt.entity.Shose;
import com.soecode.jt.entity.ShoseAppointment;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface ShoseService {
    List<Shose> findAll();

    Shose findByShoseId(int shoseId);//根据鞋子号码查学生

    /**
     * 插入预约鞋子记录
     *
     * @param shoseId
     * @param wechat
     * @param buyname
     * @param phone
     * @return 插入的行数
     */
    ShoseAppointExecution appoint(long shoseId, String wechat, String buyname, String phone);
}
