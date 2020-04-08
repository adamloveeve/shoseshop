package com.soecode.jt.entity;

import java.util.Date;

public class ShoseAppointment {

    private long shoseId;// 鞋子ID

    private String wechat;// 微信号

    private Date appointTime;// 预约时间

    private String buyname;// 买家姓名

    private String phone;// 手机号

    public ShoseAppointment(){

    }
    public long getShoseId() {
        return shoseId;
    }

    public void setShoseId(long shoseId) {
        this.shoseId = shoseId;
    }

    public String getWechat() {
        return wechat;
    }

    public void setWechat(String wechat) {
        this.wechat = wechat;
    }

    public Date getAppointTime() {
        return appointTime;
    }

    public void setAppointTime(Date appointTime) {
        this.appointTime = appointTime;
    }

    public String getBuyname() {
        return buyname;
    }

    public void setBuyname(String buyname) {
        this.buyname = buyname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public ShoseAppointment(long shoseId, String wechat, Date appointTime, String buyname, String phone) {
        this.shoseId = shoseId;
        this.wechat = wechat;
        this.appointTime = appointTime;
        this.buyname = buyname;
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "ShoseAppointment{" +
                "shoseId=" + shoseId +
                ", wechat='" + wechat + '\'' +
                ", appointTime=" + appointTime +
                ", buyname='" + buyname + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
