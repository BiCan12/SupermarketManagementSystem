package com.rcnjtech.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rcnjtech.entity.Employee;
import com.rcnjtech.service.EmployeeService;

import java.util.List;

/**
 * 超市经理Dashboard的超市员工管理
 *
 * @author RCNJTECH
 * @date 2018/01/01
 */
public class EmployeeAction extends ActionSupport implements ModelDriven<Employee> {
    private Employee employee = new Employee();
    private EmployeeService employeeService;
    private Employee searchEmployee;

    private List<Employee> employeeList;
    private Integer sid;

    @Override
    public Employee getModel() {
        return employee;
    }

    public EmployeeService getEmployeeService() {
        return employeeService;
    }

    public void setEmployeeService(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    public List<Employee> getEmployeeList() {
        return employeeList;
    }

    public void setEmployeeList(List<Employee> employeeList) {
        this.employeeList = employeeList;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Employee getSearchEmployee() {
        return searchEmployee;
    }

    public void setSearchEmployee(Employee searchEmployee) {
        this.searchEmployee = searchEmployee;
    }

    public String add() {
        if (employee == null) {
            return INPUT;
        } else {
            try {
                System.out.println(employee);
                employeeService.save(employee);
                return SUCCESS;
            } catch (Exception e) {
                return INPUT;
            }
        }
    }

    public String update() {
        if (employee == null) {
            return INPUT;
        } else {
            try {
                System.out.println(employee);
                employeeService.update(employee);
                return SUCCESS;
            } catch (Exception e) {
                return INPUT;
            }

        }
    }

    public String delete() {
        if (employee == null) {
            return INPUT;
        } else {
            try {
                System.out.println(employee);
                employeeService.delete(employee);
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
            searchEmployee = employeeService.get(sid);
            if (searchEmployee == null) {
                return INPUT;
            } else {
                System.out.println(searchEmployee);
                return SUCCESS;
            }
        }
    }

    public String findAll() {
        employeeList = employeeService.findAll();
        if (employeeList == null) {
            return INPUT;
        } else {
            System.out.println(employeeList);
            return SUCCESS;
        }
    }

    public String find() {
        if (sid == null) {
            return INPUT;
        } else {
            employeeList = employeeService.find(sid);
            if (employeeList == null) {
                return INPUT;
            } else {
                System.out.println(employeeList);
                return SUCCESS;
            }
        }
    }
}
