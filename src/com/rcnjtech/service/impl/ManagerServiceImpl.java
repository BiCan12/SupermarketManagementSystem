package com.rcnjtech.service.impl;

import com.rcnjtech.dao.ManagerDao;
import com.rcnjtech.entity.Manager;
import com.rcnjtech.service.ManagerService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Manager Service层实现类
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
@Transactional
public class ManagerServiceImpl implements ManagerService {
    private ManagerDao managerDao;

    public ManagerDao getManagerDao() {
        return managerDao;
    }

    public void setManagerDao(ManagerDao managerDao) {
        this.managerDao = managerDao;
    }

    @Override
    public void save(Manager manager) {
        managerDao.save(manager);
    }

    @Override
    public void update(Manager manager) {
        managerDao.update(manager);
    }

    @Override
    public void delete(Manager manager) {
        managerDao.delete(manager);
    }

    @Override
    public Manager get(int mid) {
        return managerDao.get(mid);
    }

    @Override
    public List<Manager> findAll() {
        return managerDao.findAll();
    }

    @Override
    public List<Manager> find(int mid) {
        return managerDao.find(mid);
    }
}
