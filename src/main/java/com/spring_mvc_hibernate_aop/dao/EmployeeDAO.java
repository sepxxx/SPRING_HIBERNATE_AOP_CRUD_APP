package com.spring_mvc_hibernate_aop.dao;


import com.spring_mvc_hibernate_aop.entity.Employee;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface EmployeeDAO {
  List<Employee> getAllEmployees();
  void saveEmployee(Employee employee);

  Employee getEmployee(int id);

    void deleteEmployee(int id);
}
