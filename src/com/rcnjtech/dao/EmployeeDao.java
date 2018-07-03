package com.rcnjtech.dao;

import com.rcnjtech.entity.Employee;

import java.util.List;

/**
 * Employee Dao层接口
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
public interface EmployeeDao {
    /**
     * 添加员工
     *
     * @param employee 员工对象
     */
    void save(Employee employee);

    /**
     * 更新员工信息
     *
     * @param employee 员工对象
     */
    void update(Employee employee);

    /**
     * 删除员工
     *
     * @param employee 员工对象
     */
    void delete(Employee employee);

    /**
     * 根据ID查询员工信息
     *
     * @param eid 员工工号
     * @return 员工对象
     */
    Employee get(int eid);

    /**
     * 查询所有员工信息
     *
     * @return 员工集合
     */
    List<Employee> findAll();

    /**
     * 根据id查询员工信息
     *
     * @param eid 员工工号
     * @return 员工集合
     */
    List<Employee> find(int eid);
}
