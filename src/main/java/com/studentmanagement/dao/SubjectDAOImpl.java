package com.studentmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentmanagement.api.Subject;
import com.studentmanagement.rowmapper.SubjectRowMapper;

@Repository
public class SubjectDAOImpl implements SubjectDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Subject> loadSubject() {

		String sql = "SELECT * FROM subject";
		List<Subject> subjectList = jdbcTemplate.query(sql, new SubjectRowMapper());
		return subjectList;
	}

	@Override
	public void saveSubjects(Subject subject) {

		Object[] sqlParameter = {
				subject.getClass_name(),
				subject.getSubject_name(),
				subject.getTeacher_name()
		};
		String sql = "INSERT INTO subject(class_name, subject_name, teacher_name) VALUES(?,?,?)";
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 record inserted");
	}

	@Override
	public void updateSubjects(Subject subject) {

		Object[] sqlParameter = {
				subject.getClass_name(),
				subject.getSubject_name(),
				subject.getTeacher_name(),
				subject.getSubject_id()
		};
		String sql = "UPDATE subject set class_name=?, subject_name=?, teacher_name=? WHERE subject_id=?";
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 record updated");
	}

	@Override
	public Subject getSubject(int subject_id) {
		String sql = "SELECT * FROM subject WHERE subject_id=?";
		Subject subject = jdbcTemplate.queryForObject(sql, new SubjectRowMapper(), subject_id);
		return subject;
	}

	@Override
	public void deleteSubject(int subject_id) {
		String sql = "DELETE FROM subject WHERE subject_id=?";
		jdbcTemplate.update(sql, subject_id);
	}

}
