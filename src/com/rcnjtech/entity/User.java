package com.rcnjtech.entity;

/**
 * 登录的用户
 *
 * @author RCNJTECH
 * @date 2017/12/30
 */
public class User {
    private Integer uid;
    private String password;
    private String role;

    public User() {
    }

    public User(Integer uid, String password, String role) {
        this.uid = uid;
        this.password = password;
        this.role = role;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}
