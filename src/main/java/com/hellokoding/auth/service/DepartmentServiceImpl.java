package com.hellokoding.auth.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.hellokoding.auth.model.Department;
import com.hellokoding.auth.repository.DepartmentRepository;
import org.springframework.stereotype.Service;

@Service
public class DepartmentServiceImpl implements DepartmentService {

	
	@Autowired
	private DepartmentRepository departmentRepository;

	@Override
	public List<Department> getAllDepartments() {
		// TODO Auto-generated method stub
		return departmentRepository.findAll();
	}

	@Override
	public void saveDepartment(Department department) {
		this.departmentRepository.save(department);

	}

	@Override
	public Department getDepartmentById(int id) {
		// TODO Auto-generated method stub
		Optional<Department> optional = departmentRepository.findById(id);
		Department department = null;
		if(optional.isPresent()) {
			department = optional.get();
		}else {
			throw new RuntimeException("Department not found for id :: " + id);
		}
		return department;
	}

	@Override
	public void deleteDepartmentById(int id) {
		this.departmentRepository.deleteById(id);
	}

}
