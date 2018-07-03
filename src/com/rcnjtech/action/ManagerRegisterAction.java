package com.rcnjtech.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rcnjtech.entity.Manager;
import com.rcnjtech.service.ManagerService;

import java.util.Map;

/**
 * 经理注册
 *
 * @author RCNJTECH
 * @date 2017/01/05
 */
public class ManagerRegisterAction extends ActionSupport implements ModelDriven<Manager> {
    private Manager manager = new Manager();
    private ManagerService managerService;

    @Override
    public Manager getModel() {
        return manager;
    }

    public ManagerService getManagerService() {
        return managerService;
    }

    public void setManagerService(ManagerService managerService) {
        this.managerService = managerService;
    }

    public String register() {
        System.out.println(manager);
        if (manager.getMid() != null && manager.getName() != null && manager.getPassword() != null) {
            Map<String, Object> session = ActionContext.getContext().getSession();
            session.put("username", manager.getName());
            session.put("role", "manager");
            managerService.save(manager);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }
}
