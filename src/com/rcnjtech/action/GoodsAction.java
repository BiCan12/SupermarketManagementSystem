package com.rcnjtech.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rcnjtech.entity.Goods;
import com.rcnjtech.service.GoodsService;

import java.util.List;

/**
 * 超市员工dashboard管理Goods
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
public class GoodsAction extends ActionSupport implements ModelDriven<Goods> {
    private Goods goods = new Goods();
    private GoodsService goodsService;
    private Goods searchGoods;

    private List<Goods> goodsList;
    private Integer sid;

    @Override
    public Goods getModel() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public GoodsService getGoodsService() {
        return goodsService;
    }

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    public Goods getSearchGoods() {
        return searchGoods;
    }

    public void setSearchGoods(Goods searchGoods) {
        this.searchGoods = searchGoods;
    }

    public List<Goods> getGoodsList() {
        return goodsList;
    }

    public void setGoodsList(List<Goods> goodsList) {
        this.goodsList = goodsList;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String addBuy() {
        if (goods == null) {
            return INPUT;
        } else {
            try {
                System.out.println(goods);
                goodsService.save(goods);
                return SUCCESS;
            } catch (Exception e) {
                return INPUT;
            }
        }
    }

    public String addSell() {
        if (goods == null) {
            return INPUT;
        } else {
            try {
                System.out.println(goods);
                goodsService.update(goods);
                return SUCCESS;
            } catch (Exception e) {
                return INPUT;
            }

        }
    }

    public String get() {
        if (sid == null) {
            return INPUT;
        } else {
            searchGoods = goodsService.get(sid);
            if (searchGoods == null) {
                return INPUT;
            } else {
                System.out.println(searchGoods);
                return SUCCESS;
            }
        }
    }

    public String findAll() {
        goodsList = goodsService.findAll();
        if (goodsList == null) {
            return INPUT;
        } else {
            System.out.println(goodsList);
            return SUCCESS;
        }
    }

    public String find() {
        if (sid == null) {
            return INPUT;
        } else {
            goodsList = goodsService.find(sid);
            if (goodsList == null) {
                return INPUT;
            } else {
                System.out.println(goodsList);
                return SUCCESS;
            }
        }
    }
}
