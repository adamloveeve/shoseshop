package com.soecode.jt.dao;

import com.soecode.jt.entity.Shose;
import com.soecode.jt.entity.ShoseAppointment;
import org.apache.ibatis.annotations.Param;

public interface ShoseAppointmentDao {
    /**
     * 插入预约鞋子记录
     *
     * @param shoseId
     * @param wechat
     * @param buyname
     * @param phone
     * @return 插入的行数
     */
    int insertAppointment(@Param("shoseId") long shoseId, @Param("wechat") String wechat,
                          @Param("buyname") String buyname, @Param("phone") String phone);


    /**
     * 通过主键查询预约图书记录，并且携带图书实体
     *
     * @param shoseId
     * @param wechat
     * @return
     */
    ShoseAppointment queryByKeyWithBook(@Param("shoseId") long shoseId, @Param("wechat") String wechat);
}
