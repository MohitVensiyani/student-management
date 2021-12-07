package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentmanagement.api.Attendance;
import com.studentmanagement.api.Student;
import com.studentmanagement.dao.AttendanceDAO;

@Service
public class AttendanceServiceImpl implements AttendanceService{

	@Autowired
	private AttendanceDAO attendanceDAO;


	@Override
	public List<Attendance> loadAttendance(String from, String to, String class_name) {
		List<Attendance> attendanceList = attendanceDAO.loadAttendance(from, to, class_name);	
		return attendanceList;
	}

	@Override
	public void saveAttendance(Attendance attendance) {
		attendanceDAO.saveAttendance(attendance);
	}

	@Override
	public List<Student> getStudent(String course_admit) {
		List<Student> studentList = attendanceDAO.getStudent(course_admit);
		return studentList;
	}

}
