package com.studentmanagement.dao;

import java.util.List;

import com.studentmanagement.api.Student;

public interface StudentDAO {

	List<Student> loadStudent();
	void saveStudent(Student student);
	Student getStudent(int id);
	void updateStudent(Student student);
	void deleteStudent(int id);

}
