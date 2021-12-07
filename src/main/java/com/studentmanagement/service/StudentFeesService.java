package com.studentmanagement.service;

import java.util.List;

import com.studentmanagement.api.StudentFees;

public interface StudentFeesService {
	
	List<StudentFees> loadFees(int id);
	
	void saveFees(StudentFees studentFees, int id);

}
