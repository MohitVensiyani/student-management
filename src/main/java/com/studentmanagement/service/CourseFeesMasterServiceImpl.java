package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentmanagement.api.CourseFeesMaster;
import com.studentmanagement.dao.CourseFeesMasterDao;

@Service
public class CourseFeesMasterServiceImpl implements CourseFeesMasterService{

	@Autowired
	private CourseFeesMasterDao courseFeesMasterDao;
	
	@Override
	public List<CourseFeesMaster> loadCourse() {
		List<CourseFeesMaster> courseList = courseFeesMasterDao.loadCourse();
		return courseList;
	}

	@Override
	public void saveCourse(CourseFeesMaster courseFeeMaster) {
		
		List<Integer> listOfFees = List.of(
				courseFeeMaster.getProspectus_fees(),
				courseFeeMaster.getRegistration_fees(),
				courseFeeMaster.getTution_fees(),
				courseFeeMaster.getLibrary_fees(),
				courseFeeMaster.getUniversity_enr_fees(),
				courseFeeMaster.getUniversity_exam_fees(),
				courseFeeMaster.getCollege_exam_fees(),
				courseFeeMaster.getId_card_fees(),
				courseFeeMaster.getEligibility_fees(),
				courseFeeMaster.getClearance_fees(),
				courseFeeMaster.getExtra_curricular_activity(),
				courseFeeMaster.getUniform_fees(),
				courseFeeMaster.getStudy_tour_fees()
		);
		
		int sum = 0;
		for(int number : listOfFees) {
			sum += number;
		}
	
		
		courseFeeMaster.setTotal(sum);
		
		
		
		courseFeesMasterDao.saveCourse(courseFeeMaster);
		System.out.println(courseFeeMaster.getTotal());

	}

	@Override
	public void updateCourse(CourseFeesMaster courseFeeMaster) {
		
		List<Integer> UpdatelistOfFees = List.of(
				courseFeeMaster.getProspectus_fees(),
				courseFeeMaster.getRegistration_fees(),
				courseFeeMaster.getTution_fees(),
				courseFeeMaster.getLibrary_fees(),
				courseFeeMaster.getUniversity_enr_fees(),
				courseFeeMaster.getUniversity_exam_fees(),
				courseFeeMaster.getCollege_exam_fees(),
				courseFeeMaster.getId_card_fees(),
				courseFeeMaster.getEligibility_fees(),
				courseFeeMaster.getClearance_fees(),
				courseFeeMaster.getExtra_curricular_activity(),
				courseFeeMaster.getUniform_fees(),
				courseFeeMaster.getStudy_tour_fees()
		);
		int sum = 0;
		for(int number : UpdatelistOfFees) {
			sum += number;
		}
	
		
		courseFeeMaster.setTotal(sum);
		
		courseFeesMasterDao.updateCourse(courseFeeMaster);
	}

	@Override
	public CourseFeesMaster getCourse(int course_id) {
		return courseFeesMasterDao.getCourse(course_id);
	}

	@Override
	public void deleteCourse(int course_id) {
		courseFeesMasterDao.deleteCourse(course_id);
	}

}
