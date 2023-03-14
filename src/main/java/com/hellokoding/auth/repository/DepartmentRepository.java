package com.hellokoding.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hellokoding.auth.model.Department;



@Repository
public interface DepartmentRepository extends JpaRepository<Department, Integer>{

}
