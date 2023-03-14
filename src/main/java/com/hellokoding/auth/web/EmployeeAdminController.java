package com.hellokoding.auth.web;


import java.io.FileNotFoundException;

import com.hellokoding.auth.model.Department;
import com.hellokoding.auth.model.Employee;
import com.hellokoding.auth.repository.EmployeeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.hellokoding.auth.service.BranchService;
import com.hellokoding.auth.service.DepartmentService;
import com.hellokoding.auth.service.EmployeeService;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class EmployeeAdminController {
	
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@GetMapping("/admin/employee-datatable")
	public String employeeDataTable(Model model) {
		model.addAttribute("listEmployees",employeeService.getAllEmployees());
		System.out.println("Into employeeDataTable" +employeeService.getAllEmployees().size());
		return "employee/employee_table_list";
	}

	@PostMapping("/admin/employee")
	public String addEmployee(Employee employee, Model model) {

		employeeService.saveEmployee(employee);

		return "redirect:/admin/employee-datatable";

	}
	//new add
	@GetMapping("/admin/employee-datatable-users")
	public String employeeDataTableUsers(Model model) {
		model.addAttribute("listEmployees",employeeService.getAllEmployees());
		return "employee/employee_table_list_users";
	}
	
	
	@GetMapping("/admin/employee-datatable/export/{format}")
	public String exportReport(@PathVariable String format,Model model) throws FileNotFoundException {
		model.addAttribute("listEmployees",employeeService.exportReport(format));
		return "redirect:/admin/employee-datatable";
	}
	
	
	@Autowired
	DepartmentService departmentService;

	@GetMapping("/admin/employee-department-table")
	public String departmentDataTable( Model model) {
		model.addAttribute("listDepartments",departmentService.getAllDepartments());
		return "employee/department_table_list";
	//	return "employee/employee_table_list_users";
		
	}
//	
	@Autowired
	private BranchService branchService;
	
	@GetMapping("/admin/employee-branch-table")
	public String branchDataTable(Model model) {
		model.addAttribute("listBranches", branchService.getAllBranches());
		return "employee/branch_table_list";
	}
//	
	
	@GetMapping("/admin/employee-dashboard")
	public String employeeDash() {
		return "employee/employee_admin_dashboard";
	}
	
	@GetMapping("/admin/employee-user-dashboard")
	public String employeeUserDash() {
		return "employee/employee_user_dashboard";
	}
	

	@GetMapping("/admin/employee-addEmp")
	public String employeeAdminAdd() {
		return "employee/employee_add";
	}
	
	
	@GetMapping("/admin/employee-department-add")
	public String departmentAdd() {
		return "employee/add_department";
	}
	
	
	@GetMapping("/admin/employee-branch-add")
	public String branchAdd() {
		return "employee/add_branch";
	}
	
	@GetMapping("/admin/employee-view-employee")
	public String viewEmployee() {
		return "employee/view_employee";
	}
	
	@GetMapping("/admin/employee-view-department")
	public String viewDepartment() {
		return "employee/view_department";
	}
	
	@GetMapping("/admin/employee-view-branch")
	public String viewBranch() {
		return "employee/view_branch";
	}
	
	@GetMapping("/employee/employee-profile")
	public String employeeProfile() {
		return "employee/employee_profile";
	}
	
	@GetMapping("/admin/employee-admin-profile")
	public String employeeAdminProfile() {
		return "employee/employee_admin_profile";
	}
	
	@GetMapping("/admin/employee-admin-login")
	public String employeeAdminLogin() {
		return "employee/employee_admin_login";
	}
	
	@GetMapping("/admin/403")
	public String error403() {
		return "employee/403";
	}
	@GetMapping("/admin/deleteEmployee{id}")
	public String deleteEmployeeById(int id) {
		this.employeeRepository.deleteById(id);
		return "employee/employee_table_list";
		

	}
	
	
}
