package com.rcnjtech.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rcnjtech.entity.Employee;
import com.rcnjtech.entity.Manager;
import com.rcnjtech.entity.User;
import com.rcnjtech.service.EmployeeService;
import com.rcnjtech.service.ManagerService;

import java.util.Map;

/**
 * 处理用户登录和注销
 *
 * @author RCNJTECH
 * @date 2017/12/30
 */
public class UserAction extends ActionSupport implements ModelDriven<User> {
    private Map<String, Object> session = ActionContext.getContext().getSession();
    private User user = new User();
    private ManagerService managerService;
    private EmployeeService employeeService;

    @Override
    public User getModel() {
        return user;
    }

    public ManagerService getManagerService() {
        return managerService;
    }

    public void setManagerService(ManagerService managerService) {
        this.managerService = managerService;
    }

    public EmployeeService getEmployeeService() {
        return employeeService;
    }

    public void setEmployeeService(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    public String login() {
        if (user.getUid() != null && user.getPassword() != null) {
            int uid = user.getUid();
            String password = user.getPassword();
            String role = user.getRole();
            if ("manager".equals(role)) {
                Manager manager = managerService.get(uid);
                if (manager == null) {
                    return LOGIN;
                } else {
                    System.out.println(manager);
                    if (manager.getPassword().equals(password.trim())) {
                        session.put("username", manager.getName());
                        session.put("role", role);
                        return SUCCESS;
                    } else {
                        return LOGIN;
                    }
                }
            } else if ("employee".equals(role)) {
                Employee employee = employeeService.get(uid);
                if (employee == null) {
                    return LOGIN;
                } else {
                    System.out.println(employee);
                    if (employee.getPassword().equals(password.trim())) {
                        session.put("username", employee.getName());
                        session.put("role", role);
                        return SUCCESS;
                    } else {
                        return LOGIN;
                    }
                }
            } else {
                return LOGIN;
            }
        } else {
            return LOGIN;
        }
    }

    public String logon() {
        if (session.containsKey("username")) {
            session.remove("username");
            return SUCCESS;
        } else {
            return LOGIN;
        }
    }

    public String dashboardRole() {
        String role = (String) session.get("role");
        if ("manager".equals(role)) {
            return "manager";
        } else if ("employee".equals(role)) {
            return "employee";
        } else {
            return LOGIN;
        }
    }
}
