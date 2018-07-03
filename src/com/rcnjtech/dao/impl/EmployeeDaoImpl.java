package com.rcnjtech.dao.impl;

import com.rcnjtech.dao.EmployeeDao;
import com.rcnjtech.entity.Employee;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

/**
 * Employee Dao层实现类
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
public class EmployeeDaoImpl implements EmployeeDao {
    private HibernateTemplate hibernateTemplate;

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    @Override
    public void save(Employee employee) {
        hibernateTemplate.save(employee);
    }

    @Override
    public void update(Employee employee) {
        hibernateTemplate.update(employee);
    }

    @Override
    public void delete(Employee employee) {
        hibernateTemplate.delete(employee);
    }

    @Override
    public Employee get(int eid) {
        return hibernateTemplate.get(Employee.class, eid);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Employee> findAll() {
        return (List<Employee>) hibernateTemplate.find("from Employee");
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Employee> find(int eid) {
        return (List<Employee>) hibernateTemplate.find("from Employee where eid = ?", eid);
    }
}
