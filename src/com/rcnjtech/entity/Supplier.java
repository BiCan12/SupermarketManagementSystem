package com.rcnjtech.entity;

import java.io.Serializable;

/**
 * 商品供应商
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
public class Supplier implements Serializable {
    private static final long serialVersionUID = -5177294790620539121L;

    private Integer sid;
    private String name;
    private String goods;
    private String phone;

    public Supplier() {
    }

    public Supplier(Integer sid, String name, String goods, String phone) {
        this.sid = sid;
        this.name = name;
        this.goods = goods;
        this.phone = phone;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGoods() {
        return goods;
    }

    public void setGoods(String goods) {
        this.goods = goods;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Supplier{" +
                "sid=" + sid +
                ", name='" + name + '\'' +
                ", goods='" + goods + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
