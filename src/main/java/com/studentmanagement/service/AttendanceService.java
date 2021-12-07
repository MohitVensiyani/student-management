package com.studentmanagement.service;

import java.util.List;

import com.studentmanagement.api.Attendance;
import com.studentmanagement.api.Student;

public interface AttendanceService {
	
	List<Attendance> loadAttendance(String from, String to, String class_name);

	void saveAttendance(Attendance attendance);
	
	List<Student> getStudent(String course_admit);
}
