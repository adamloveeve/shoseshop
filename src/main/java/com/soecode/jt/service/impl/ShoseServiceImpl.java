package com.soecode.jt.service.impl;
import com.soecode.jt.dao.AppointmentDao;
import com.soecode.jt.dao.ShoseAppointmentDao;
import com.soecode.jt.dao.ShoseDao;
import com.soecode.jt.dto.ShoseAppointExecution;
import com.soecode.jt.entity.Appointment;
import com.soecode.jt.entity.ShoseAppointment;
import com.soecode.jt.entity.Shose;
import com.soecode.jt.enums.AppointStateEnum;
import com.soecode.jt.exception.AppointException;
import com.soecode.jt.exception.NoNumberException;
import com.soecode.jt.exception.RepeatAppointException;
import com.soecode.jt.service.ShoseService;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import javax.annotation.Resource;

@Service
public class ShoseServiceImpl implements ShoseService {
    //这里的自动装配会报错，可以忽视，因为在spring-mybatis.xml中有进行配置，通过mapper映射从Session工厂中获取
    @Resource
    private ShoseDao ShoseDao;

    @Autowired
    private ShoseAppointmentDao ShoseAppointmentDao;

    public List<Shose> findAll() {
        return ShoseDao.findAll();
    }


    public Shose findByShoseId(int shoseId) {
        return ShoseDao.findByShoseId(shoseId);
    }

    @Override
    @Transactional
    /**
     * 插入预约鞋子记录
     *
     * @param shoseId
     * @param wechat
     * @param buyname
     * @param phone
     * @return 插入的行数
     */
    public ShoseAppointExecution appoint(long shoseId, String wechat, String buyname, String phone){
        try {
            int update = ShoseDao.reduceNumber(shoseId);
            if (update <= 0) {// 库存不足
                throw new NoNumberException("no number");
            } else {
                // 执行预约操作
                int insert = ShoseAppointmentDao.insertAppointment(shoseId, wechat, buyname, phone);
                if (insert <= 0) {// 重复预约
                    throw new RepeatAppointException("repeat appoint");
                } else {// 预约成功
//                Appointment appointment = ShoseAppointmentDao.queryByKeyWithBook(shoseId, wechat);
                    return new ShoseAppointExecution(shoseId, AppointStateEnum.SUCCESS);
                }
            }
        }catch (NoNumberException e1) {
            throw e1;
        } catch (RepeatAppointException e2) {
            throw e2;
        } catch (Exception e) {
            // 所有编译期异常转换为运行期异常
            throw new AppointException("appoint inner error:" + e.getMessage());
        }
    }
}
