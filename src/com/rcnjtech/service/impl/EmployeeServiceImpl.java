package com.rcnjtech.service.impl;

import com.rcnjtech.dao.EmployeeDao;
import com.rcnjtech.entity.Employee;
import com.rcnjtech.service.EmployeeService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Employee Service层实现类
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
@Transactional
public class EmployeeServiceImpl implements EmployeeService {
    private EmployeeDao employeeDao;

    public EmployeeDao getEmployeeDao() {
        return employeeDao;
    }

    public void setEmployeeDao(EmployeeDao employeeDao) {
        this.employeeDao = employeeDao;
    }

    @Override
    public void save(Employee employee) {
        employeeDao.save(employee);
    }

    @Override
    public void update(Employee employee) {
        employeeDao.update(employee);
    }

    @Override
    public void delete(Employee employee) {
        employeeDao.delete(employee);
    }

    @Override
    public Employee get(int eid) {
        return employeeDao.get(eid);
    }

    @Override
    public List<Employee> findAll() {
        return employeeDao.findAll();
    }

    @Override
    public List<Employee> find(int eid) {
        return employeeDao.find(eid);
    }
}
