package com.rcnjtech.entity;

import java.io.Serializable;

/**
 * 商品
 *
 * @author RCNJTECH
 * @date 2018/01/05
 */
public class Goods implements Serializable {
    private static final long serialVersionUID = -2081280017450789260L;

    private Integer gid;
    private String name;
    private String type;
    private Double cost;
    private Integer buy;
    private Double price;
    private Integer sell;

    public Goods() {
    }

    public Goods(Integer gid, String name, String type, Double cost, Integer buy, Double price, Integer sell) {
        this.gid = gid;
        this.name = name;
        this.type = type;
        this.cost = cost;
        this.buy = buy;
        this.price = price;
        this.sell = sell;
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public Integer getBuy() {
        return buy;
    }

    public void setBuy(Integer buy) {
        this.buy = buy;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getSell() {
        return sell;
    }

    public void setSell(Integer sell) {
        this.sell = sell;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "gid=" + gid +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", cost=" + cost +
                ", buy=" + buy +
                ", price=" + price +
                ", sell=" + sell +
                '}';
    }
}
