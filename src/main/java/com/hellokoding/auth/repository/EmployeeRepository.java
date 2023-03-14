package com.hellokoding.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hellokoding.auth.model.Employee;

@Repository 
public interface EmployeeRepository extends JpaRepository<Employee, Integer>{ 

}
