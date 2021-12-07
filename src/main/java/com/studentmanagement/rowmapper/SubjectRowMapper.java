package com.studentmanagement.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentmanagement.api.Subject;

public class SubjectRowMapper implements RowMapper<Subject> {

	@Override
	public Subject mapRow(ResultSet rs, int rowNum) throws SQLException {

		Subject subject = new Subject();
		subject.setSubject_id(rs.getInt("subject_id"));
		subject.setSubject_name(rs.getString("subject_name"));
		subject.setClass_name(rs.getString("class_name"));
		subject.setTeacher_name(rs.getString("teacher_name"));
		return subject;
	}

}
