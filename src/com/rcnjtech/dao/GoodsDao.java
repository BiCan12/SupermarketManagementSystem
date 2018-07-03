package com.rcnjtech.dao;

import com.rcnjtech.entity.Goods;

import java.util.List;

/**
 * Goods Dao层接口
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
public interface GoodsDao {
    /**
     * 添加商品
     *
     * @param goods 商品对象
     */
    void save(Goods goods);

    /**
     * 更新商品信息
     *
     * @param goods 商品对象
     */
    void update(Goods goods);

    /**
     * 删除商品
     *
     * @param goods 商品对象
     */
    void delete(Goods goods);

    /**
     * 根据ID查询商品信息
     *
     * @param gid 商品编号
     * @return 商品对象
     */
    Goods get(int gid);

    /**
     * 查询所有商品信息
     *
     * @return 商品集合
     */
    List<Goods> findAll();

    /**
     * 根据id查询商品信息
     *
     * @param gid 商品编号
     * @return 商品集合
     */
    List<Goods> find(int gid);
}
