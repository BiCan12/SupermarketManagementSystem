package com.rcnjtech.dao.impl;

import com.rcnjtech.dao.GoodsDao;
import com.rcnjtech.entity.Goods;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

/**
 * Goods Dao层实现类
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
public class GoodsDaoImpl implements GoodsDao {
    private HibernateTemplate hibernateTemplate;

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    @Override
    public void save(Goods goods) {
        hibernateTemplate.save(goods);
    }

    @Override
    public void update(Goods goods) {
        hibernateTemplate.update(goods);
    }

    @Override
    public void delete(Goods goods) {
        hibernateTemplate.delete(goods);
    }

    @Override
    public Goods get(int gid) {
        return hibernateTemplate.get(Goods.class, gid);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Goods> findAll() {
        return (List<Goods>) hibernateTemplate.find("from Goods");
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Goods> find(int gid) {
        return (List<Goods>) hibernateTemplate.find("from Goods where gid = ?", gid);
    }
}
