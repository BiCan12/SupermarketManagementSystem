package com.rcnjtech.service;

import com.rcnjtech.entity.Manager;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Manager Service层接口
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
@Transactional
public interface ManagerService {
    /**
     * 添加经理
     *
     * @param manager 经理对象
     */
    void save(Manager manager);

    /**
     * 更新经理信息
     *
     * @param manager 经理对象
     */
    void update(Manager manager);

    /**
     * 删除经理，级联删除
     *
     * @param manager 经理对象
     */
    void delete(Manager manager);

    /**
     * 根据ID查询经理信息
     *
     * @param mid 经理编号
     */
    Manager get(int mid);

    /**
     * 查询所有经理信息
     *
     * @return 经理集合
     */
    List<Manager> findAll();

    /**
     * 根据id查询经理信息
     *
     * @param mid 经理编号
     * @return 经理集合
     */
    List<Manager> find(int mid);
}
