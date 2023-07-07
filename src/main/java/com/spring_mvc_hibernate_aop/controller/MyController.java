package com.spring_mvc_hibernate_aop.controller;

import com.spring_mvc_hibernate_aop.entity.Employee;
import com.spring_mvc_hibernate_aop.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MyController {

    @Autowired
    private EmployeeService employeeService;
//    private EmployeeDAO employeeDAO;
    @RequestMapping("/")
    public String showAllEmployees(Model model) {
//        List<Employee> employees = employeeDAO.getAllEmployees();
        List<Employee> employees = employeeService.getAllEmployees();
        model.addAttribute("emps", employees);
        return "all-emps";
    }

    @RequestMapping("/addEmployee")
    public String addEmployee(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "employee-info";
    }

    @RequestMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute(name = "employee") Employee employee) {
        employeeService.saveEmployee(employee);
        return "redirect:/";
    }

    @RequestMapping("/updateEmployee")
    public String updateEmployee(@RequestParam(name = "empId") int id, Model model) {
        Employee employee = employeeService.getEmployee(id);
        model.addAttribute("employee", employee);
        return "employee-info";
    }

}
