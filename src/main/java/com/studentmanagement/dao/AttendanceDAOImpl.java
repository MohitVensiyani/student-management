package com.studentmanagement.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentmanagement.api.Attendance;
import com.studentmanagement.api.Student;
import com.studentmanagement.rowmapper.AttendanceRowMapper;
import com.studentmanagement.rowmapper.StudentRowMapper;
import com.studentmanagement.service.AttendanceService;

@Repository
public class AttendanceDAOImpl implements AttendanceDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private AttendanceService attendanceService;

	@Override
	public List<Attendance> loadAttendance(String from, String to, String class_name) {

		String sql = "SELECT * FROM attendance WHERE (date BETWEEN ? AND ?) AND class_name=?";
		List<Attendance> attendanceList = jdbcTemplate.query(sql, new AttendanceRowMapper(), from, to, class_name );
		return attendanceList;
	}

	@Override
	public void saveAttendance(Attendance attendance) {

		String class_name = attendance.getClass_name();
		List<Student> studentList = attendanceService.getStudent(class_name);
		List<String> studentName = new ArrayList<String>();
		String[] attendanceList = attendance.getAttendance().split(",");
		int length = studentList.size();
		
		int i = 0;
		for(Student tempStudent : studentList) {
			String tempStudentName = tempStudent.getFirst_name() + " " + tempStudent.getLast_name();
			studentName.add(tempStudentName);
			Object[] sqlParameter = {
					attendance.getClass_name(),
					attendance.getSubject_name(),
					attendance.getDate(),
					tempStudentName,
					attendanceList[i]
			};
			
			String sql = "INSERT INTO attendance(class_name, subject_name, date, student_name, attendance) VALUES(?,?,?,?,?)";
			jdbcTemplate.update(sql, sqlParameter);
			i++;
		}
	}

	@Override
	public List<Student> getStudent(String course_admit) {

		String sql = "SELECT * FROM students WHERE course_admit=?";
		List<Student> studentList = jdbcTemplate.query(sql, new StudentRowMapper(), course_admit);
		return studentList;
	}

	

}
