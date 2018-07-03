package com.rcnjtech.entity;

import java.io.Serializable;

/**
 * 超市员工
 *
 * @author RCNJTECH
 * @date 2017/12/29
 */
public class Employee implements Serializable {
    private static final long serialVersionUID = -1434217398934314980L;

    private Integer eid;
    private String name;
    private String password;
    private String sex;
    private Integer age;
    private String phone;
    private String remark;

    public Employee() {
    }

    public Employee(Integer eid, String name, String password, String sex, Integer age, String phone, String remark) {
        this.eid = eid;
        this.name = name;
        this.password = password;
        this.sex = sex;
        this.age = age;
        this.phone = phone;
        this.remark = remark;
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "eid=" + eid +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", phone='" + phone + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
