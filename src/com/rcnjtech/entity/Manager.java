package com.rcnjtech.entity;

import java.io.Serializable;
/**
 * 超市经理
 *
 * @author RCNJTECH
 * @date 2017/12/19
 */
public class Manager implements Serializable {
    private static final long serialVersionUID = -122714663668377223L;

    private Integer mid;
    private String name;
    private String password;
    private String sex;
    private Integer age;
    private String email;
    private String firm;
    private String address;

    public Manager() {
    }

    public Manager(Integer mid, String name, String password, String sex, Integer age, String email, String firm, String address) {
        this.mid = mid;
        this.name = name;
        this.password = password;
        this.sex = sex;
        this.age = age;
        this.email = email;
        this.firm = firm;
        this.address = address;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirm() {
        return firm;
    }

    public void setFirm(String firm) {
        this.firm = firm;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "mid=" + mid +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", email='" + email + '\'' +
                ", firm='" + firm + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
