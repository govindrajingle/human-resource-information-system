package com.hellokoding.auth.service;

import java.io.FileNotFoundException;
import java.util.List;

import com.hellokoding.auth.model.Employee;





public interface EmployeeService {	
	List<Employee> getAllEmployees();
	void saveEmployee(Employee employee);
	Employee getEmployeeById(int id);
	void deleteEmployeeById(int id);
	String exportReport(String format) throws FileNotFoundException;
}

//JRException;