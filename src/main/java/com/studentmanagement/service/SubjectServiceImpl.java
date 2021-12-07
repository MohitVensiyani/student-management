package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentmanagement.api.Subject;
import com.studentmanagement.dao.SubjectDAO;

@Service
public class SubjectServiceImpl implements SubjectService{
	
	@Autowired
	private SubjectDAO subjectDAO;

	@Override
	public List<Subject> loadSubject() {
		List<Subject> subjectList = subjectDAO.loadSubject();
		return subjectList;
	}

	@Override
	public void saveSubjects(Subject subject) {
		subjectDAO.saveSubjects(subject);
	}

	@Override
	public void updateSubjects(Subject subject) {
		subjectDAO.updateSubjects(subject);
	}

	@Override
	public Subject getSubject(int subject_id) {
		return subjectDAO.getSubject(subject_id);
	}

	@Override
	public void deleteSubject(int subject_id) {
		subjectDAO.deleteSubject(subject_id);
	}

}
