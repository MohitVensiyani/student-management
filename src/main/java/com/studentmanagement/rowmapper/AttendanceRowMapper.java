package com.studentmanagement.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentmanagement.api.Attendance;

public class AttendanceRowMapper implements RowMapper<Attendance> {

	@Override
	public Attendance mapRow(ResultSet rs, int rowNum) throws SQLException {

		Attendance attendance = new Attendance();
		attendance.setAttendance_id(rs.getInt("attendance_id"));
		attendance.setClass_name(rs.getString("class_name"));
		attendance.setSubject_name(rs.getString("subject_name"));
		attendance.setDate(rs.getString("date"));
		attendance.setStudent_name(rs.getString("student_name"));
		attendance.setAttendance(rs.getString("attendance"));
		return attendance;
	}

}
