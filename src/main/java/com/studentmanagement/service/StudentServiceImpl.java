package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentmanagement.api.CourseFeesMaster;
import com.studentmanagement.api.Student;
import com.studentmanagement.dao.StudentDAO;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentDAO studentDAO;
	
	@Autowired
	private CourseFeesMasterService courseFeesMasterService;
	
	@Override
	public List<Student> loadStudents() {

		List<Student> studentList = studentDAO.loadStudent();
		return studentList;
	}

	@Override
	public void saveStudent(Student student) {
		try {
			List<CourseFeesMaster> courseList = courseFeesMasterService.loadCourse();
			String courseName = student.getCourse_admit();
			for(CourseFeesMaster tempcourse : courseList) {
				if(tempcourse.getCourse_name().equals(courseName)) {
					student.setFees(tempcourse.getTotal());
				}
			}
			
			System.out.println(student.getFees());
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		studentDAO.saveStudent(student);
	}

	@Override
	public Student getStudent(int id) {
		
		return studentDAO.getStudent(id);
	}

	@Override
	public void updateStudent(Student student) {
		
		try {
			List<CourseFeesMaster> courseList = courseFeesMasterService.loadCourse();
			String courseName = student.getCourse_admit();
			for(CourseFeesMaster tempcourse : courseList) {
				if(tempcourse.getCourse_name().equals(courseName)) {
					student.setFees(tempcourse.getTotal());
				}
			}
			System.out.println(student.getFees());
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		studentDAO.updateStudent(student);
	}

	@Override
	public void deleteStudent(int id) {

		studentDAO.deleteStudent(id);
	}

}
