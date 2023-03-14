package com.hellokoding.auth.service;

import java.io.FileNotFoundException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hellokoding.auth.model.Employee;
import com.hellokoding.auth.repository.EmployeeRepository;


@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Override
	public List<Employee> getAllEmployees() {
		// TODO Auto-generated method stub
		return employeeRepository.findAll();
	}

	@Override
	public void saveEmployee(Employee employee) {
		this.employeeRepository.save(employee);

	}

	@Override
	public Employee getEmployeeById(int id) {
		Optional<Employee> optional = employeeRepository.findById(id);
		Employee employee = null;
		if(optional.isPresent()) {
			employee = optional.get();
		}else {
			throw new RuntimeException("Employee not found for id :: " + id);
		}
		return employee;
	}

	@Override
	public void deleteEmployeeById(int id) {
		this.employeeRepository.deleteById(id);

	}

	@Override
	public String exportReport(String format) throws FileNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

}







