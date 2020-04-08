package com.soecode.jt.dto;
import com.soecode.jt.entity.ShoseAppointment;
import com.soecode.jt.enums.AppointStateEnum;
public class ShoseAppointExecution {
    // 图书ID
    private long shoseId;

    // 秒杀预约结果状态
    private int state;

    // 状态标识
    private String stateInfo;

    // 预约成功对象
    private ShoseAppointment shoseappointment;

    public ShoseAppointExecution() {
    }
    // 预约失败的构造器
    public ShoseAppointExecution(long shoseId, AppointStateEnum stateEnum) {
        this.shoseId = shoseId;
        this.state = stateEnum.getState();
        this.stateInfo = stateEnum.getStateInfo();
    }

    // 预约成功的构造器
    public ShoseAppointExecution(long shoseId, AppointStateEnum stateEnum, ShoseAppointment shoseappointment) {
        this.shoseId = shoseId;
        this.state = stateEnum.getState();
        this.stateInfo = stateEnum.getStateInfo();
        this.shoseappointment = shoseappointment;
    }
    public long getShoseId() {
        return shoseId;
    }

    public void setShoseId(long shoseId) {
        this.shoseId = shoseId;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getStateInfo() {
        return stateInfo;
    }

    public void setStateInfo(String stateInfo) {
        this.stateInfo = stateInfo;
    }

    public ShoseAppointment getShoseappointment() {
        return shoseappointment;
    }

    public void setShoseappointment(ShoseAppointment shoseappointment) {
        this.shoseappointment = shoseappointment;
    }

    @Override
    public String toString() {
        return "ShoseAppointExecution{" +
                "shoseId=" + shoseId +
                ", state=" + state +
                ", stateInfo='" + stateInfo + '\'' +
                ", shoseappointment=" + shoseappointment +
                '}';
    }
}
