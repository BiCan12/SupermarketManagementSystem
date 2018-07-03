package com.rcnjtech.dao.impl;

import com.rcnjtech.dao.ManagerDao;
import com.rcnjtech.entity.Manager;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

/**
 * Manager Dao层实现类
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
public class ManagerDaoImpl implements ManagerDao {
    private HibernateTemplate hibernateTemplate;

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    @Override
    public void save(Manager manager) {
        hibernateTemplate.save(manager);
    }

    @Override
    public void update(Manager manager) {
        hibernateTemplate.update(manager);
    }

    @Override
    public void delete(Manager manager) {
        hibernateTemplate.delete(manager);
    }

    @Override
    public Manager get(int mid) {
        return hibernateTemplate.get(Manager.class, mid);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Manager> findAll() {
        return (List<Manager>) hibernateTemplate.find("from Manager");
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Manager> find(int mid) {
        return (List<Manager>) hibernateTemplate.find("from Manager where mid = ?", mid);
    }
}
