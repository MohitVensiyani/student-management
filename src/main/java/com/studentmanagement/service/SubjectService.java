package com.studentmanagement.service;

import java.util.List;

import com.studentmanagement.api.Subject;

public interface SubjectService {

	List<Subject> loadSubject();

	void saveSubjects(Subject subject);

	void updateSubjects(Subject subject);

	Subject getSubject(int subject_id);

	void deleteSubject(int subject_id);
}
