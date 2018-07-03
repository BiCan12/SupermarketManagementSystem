package com.rcnjtech.service.impl;

import com.rcnjtech.dao.GoodsDao;
import com.rcnjtech.entity.Goods;
import com.rcnjtech.service.GoodsService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Goods Service层实现类
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
@Transactional
public class GoodsServiceImpl implements GoodsService {
    private GoodsDao goodsDao;

    public GoodsDao getGoodsDao() {
        return goodsDao;
    }

    public void setGoodsDao(GoodsDao goodsDao) {
        this.goodsDao = goodsDao;
    }

    @Override
    public void save(Goods goods) {
        goodsDao.save(goods);
    }

    @Override
    public void update(Goods goods) {
        goodsDao.update(goods);
    }

    @Override
    public void delete(Goods goods) {
        goodsDao.delete(goods);
    }

    @Override
    public Goods get(int gid) {
        return goodsDao.get(gid);
    }

    @Override
    public List<Goods> findAll() {
        return goodsDao.findAll();
    }

    @Override
    public List<Goods> find(int gid) {
        return goodsDao.find(gid);
    }
}
