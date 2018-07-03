package com.rcnjtech.dao.impl;

import com.rcnjtech.dao.SupplierDao;
import com.rcnjtech.entity.Supplier;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

/**
 * Supplier Dao层实现类
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
public class SupplierDaoImpl implements SupplierDao {
    private HibernateTemplate hibernateTemplate;

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    @Override
    public void save(Supplier supplier) {
        hibernateTemplate.save(supplier);
    }

    @Override
    public void update(Supplier supplier) {
        hibernateTemplate.update(supplier);
    }

    @Override
    public void delete(Supplier supplier) {
        hibernateTemplate.delete(supplier);
    }

    @Override
    public Supplier get(int sid) {
        return hibernateTemplate.get(Supplier.class, sid);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Supplier> findAll() {
        return (List<Supplier>) hibernateTemplate.find("from Supplier");
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Supplier> find(int sid) {
        return (List<Supplier>) hibernateTemplate.find("from Supplier where sid = ?", sid);
    }
}
