package com.soecode.jt.entity;
/**
 * 鞋子实体
 */
public class Shose {
    private long shoseId;// 鞋子ID

    private String name;// 鞋子名称

    private int number;// 数量

    private double price;// 价格

    private String remarks;//备注

    private String simg;//图片路径

    public Shose() {
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @Override
    public String toString() {
        return "Shose{" +
                "shoseId=" + shoseId +
                ", name='" + name + '\'' +
                ", number=" + number +
                ", price=" + price +
                ", remarks='" + remarks + '\'' +
                ", simg='" + simg + '\'' +
                '}';
    }

    public void setSimg(String simg) {
        this.simg = simg;
    }

    public String getRemarks() {
        return remarks;
    }

    public String getSimg() {
        return simg;
    }

    public Shose(long shoseId, String name, int number, double price, String remarks, String simg) {
        this.shoseId = shoseId;
        this.name = name;
        this.number = number;
        this.price = price;
        this.remarks = remarks;
        this.simg = simg;
    }

    public long getShoseId() {
        return shoseId;
    }

    public void setShoseId(long shoseId) {
        this.shoseId = shoseId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

}
