package com.rcnjtech.dao;

import com.rcnjtech.entity.Supplier;

import java.util.List;

/**
 * Supplier Dao层接口
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
public interface SupplierDao {
    /**
     * 添加供应商
     *
     * @param supplier 供应商对象
     */
    void save(Supplier supplier);

    /**
     * 更新供应商信息
     *
     * @param supplier 供应商对象
     */
    void update(Supplier supplier);

    /**
     * 删除供应商
     *
     * @param supplier 供应商对象
     */
    void delete(Supplier supplier);

    /**
     * 根据ID查询供应商信息
     *
     * @param sid 供应商编号
     * @return 供应商对象
     */
    Supplier get(int sid);

    /**
     * 查询所有供应商信息
     *
     * @return 供应商集合
     */
    List<Supplier> findAll();

    /**
     * 根据id查询供应商信息
     *
     * @param sid 供应商编号
     * @return 供应商集合
     */
    List<Supplier> find(int sid);
}
