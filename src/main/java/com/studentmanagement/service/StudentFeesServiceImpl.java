package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentmanagement.api.Student;
import com.studentmanagement.api.StudentFees;
import com.studentmanagement.dao.StudentDAO;
import com.studentmanagement.dao.StudentFeesDAO;

@Service
public class StudentFeesServiceImpl implements StudentFeesService{
	
	@Autowired
	private StudentFeesDAO studentFeesDAO;
	
	@Autowired
	private StudentDAO studentDAO;

	@Override
	public List<StudentFees> loadFees(int id) {
		
		List<StudentFees> feesList = studentFeesDAO.loadFees(id);
		return feesList;
	}

	@Override
	public void saveFees(StudentFees studentFees, int id) {
		
		studentFees.setId(id);
		Student student = studentDAO.getStudent(id);
		int fees = student.getFees();
		int sum = studentFees.getAmount();
		List<StudentFees> feesList = studentFeesDAO.loadFees(id);
		for(StudentFees tempFees : feesList) { 
			sum += tempFees.getAmount(); 
		}
		
		System.out.println("-------------------------------" + sum);
		studentFees.setRemaining_balance(fees - sum);
		
		
		
		studentFeesDAO.saveFees(studentFees, id);
	}

}
