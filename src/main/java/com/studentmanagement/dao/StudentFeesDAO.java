package com.studentmanagement.dao;

import java.util.List;

import com.studentmanagement.api.StudentFees;

public interface StudentFeesDAO {
	
	List<StudentFees> loadFees(int id);
	
	void saveFees(StudentFees studentFees, int id);
	
}
