package com.hellokoding.auth.service;

import java.util.List;

import com.hellokoding.auth.model.Department;



public interface DepartmentService {
	List<Department> getAllDepartments();
	void saveDepartment(Department department);
	Department getDepartmentById(int id);
	void deleteDepartmentById(int id);	
}
