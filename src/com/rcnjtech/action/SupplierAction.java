package com.rcnjtech.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rcnjtech.entity.Supplier;
import com.rcnjtech.service.SupplierService;

import java.util.List;


/**
 * 超市经理Dashboard的供应商管理
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
public class SupplierAction extends ActionSupport implements ModelDriven<Supplier> {
    private Supplier supplier = new Supplier();
    private SupplierService supplierService;

    private Supplier findSupplier;
    private Integer fid;
    private List<Supplier> supplierList;

    @Override
    public Supplier getModel() {
        return supplier;
    }

    public SupplierService getSupplierService() {
        return supplierService;
    }

    public void setSupplierService(SupplierService supplierService) {
        this.supplierService = supplierService;
    }

    public Supplier getFindSupplier() {
        return findSupplier;
    }

    public void setFindSupplier(Supplier findSupplier) {
        this.findSupplier = findSupplier;
    }

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public List<Supplier> getSupplierList() {
        return supplierList;
    }

    public void setSupplierList(List<Supplier> supplierList) {
        this.supplierList = supplierList;
    }

    public String add() {
        if (supplier == null) {
            return INPUT;
        } else {
            try {
                System.out.println(supplier);
                supplierService.save(supplier);
                return SUCCESS;
            } catch (Exception e) {
                return INPUT;
            }
        }
    }

    public String update() {
        if (supplier == null) {
            return INPUT;
        } else {
            try {
                System.out.println(supplier);
                supplierService.update(supplier);
                return SUCCESS;
            } catch (Exception e) {
                return INPUT;
            }
        }
    }

    public String delete() {
        if (supplier == null) {
            return INPUT;
        } else {
            try {
                System.out.println(supplier);
                supplierService.delete(supplier);
                return SUCCESS;
            } catch (Exception e) {
                return INPUT;
            }
        }
    }

    public String get() {
        if (fid == null) {
            return INPUT;
        } else {
            findSupplier = supplierService.get(fid);
            if (findSupplier == null) {
                return INPUT;
            } else {
                System.out.println(findSupplier);
                return SUCCESS;
            }
        }
    }

    public String findAll() {
        supplierList = supplierService.findAll();
        if (supplierList == null) {
            return INPUT;
        } else {
            System.out.println(supplierList);
            return SUCCESS;
        }
    }

    public String find() {
        if (fid == null) {
            return INPUT;
        } else {
            supplierList = supplierService.find(fid);
            if (supplierList == null) {
                return INPUT;
            } else {
                System.out.println(supplierList);
                return SUCCESS;
            }
        }
    }
}
