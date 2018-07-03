package com.rcnjtech.service.impl;

import com.rcnjtech.dao.SupplierDao;
import com.rcnjtech.entity.Supplier;
import com.rcnjtech.service.SupplierService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Supplier Service层实现类
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
@Transactional
public class SupplierServiceImpl implements SupplierService {
    private SupplierDao supplierDao;

    public SupplierDao getSupplierDao() {
        return supplierDao;
    }

    public void setSupplierDao(SupplierDao supplierDao) {
        this.supplierDao = supplierDao;
    }

    @Override
    public void save(Supplier supplier) {
        supplierDao.save(supplier);
    }

    @Override
    public void update(Supplier supplier) {
        supplierDao.update(supplier);
    }

    @Override
    public void delete(Supplier supplier) {
        supplierDao.delete(supplier);
    }

    @Override
    public Supplier get(int sid) {
        return supplierDao.get(sid);
    }

    @Override
    public List<Supplier> findAll() {
        return supplierDao.findAll();
    }

    @Override
    public List<Supplier> find(int sid) {
        return supplierDao.find(sid);
    }
}
