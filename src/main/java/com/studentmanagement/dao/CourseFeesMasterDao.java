package com.studentmanagement.dao;

import java.util.List;

import com.studentmanagement.api.CourseFeesMaster;

public interface CourseFeesMasterDao {
	
	List<CourseFeesMaster> loadCourse();
	
	void saveCourse(CourseFeesMaster courseFeeMaster);
	
	void updateCourse(CourseFeesMaster courseFeeMaster);
	
	CourseFeesMaster getCourse(int course_id);
	
	void deleteCourse(int course_id);

}
