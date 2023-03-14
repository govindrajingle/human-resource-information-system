package com.hellokoding.auth.service;

import com.hellokoding.auth.model.Branch;

import java.util.List;

public interface BranchService {
	List<Branch> getAllBranches();
	void saveBranch(Branch branch);
	Branch getBranchById(int id);
	void deleteBranchById(int id);
}
