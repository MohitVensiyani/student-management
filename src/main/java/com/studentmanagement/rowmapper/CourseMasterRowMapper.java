package com.studentmanagement.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentmanagement.api.CourseFeesMaster;

public class CourseMasterRowMapper implements RowMapper<CourseFeesMaster>{

	@Override
	public CourseFeesMaster mapRow(ResultSet rs, int rowNum) throws SQLException {

		CourseFeesMaster courseFeesMaster = new CourseFeesMaster();
		
		courseFeesMaster.setCourse_id(rs.getInt("course_id"));
		courseFeesMaster.setCourse_name(rs.getString("course_name"));
		courseFeesMaster.setProspectus_fees(rs.getInt("prospectus_fees"));
		courseFeesMaster.setRegistration_fees(rs.getInt("registration_fees"));
		courseFeesMaster.setTution_fees(rs.getInt("tution_fees"));
		courseFeesMaster.setLibrary_fees(rs.getInt("library_fees"));
		courseFeesMaster.setUniversity_enr_fees(rs.getInt("university_enr_fees"));
		courseFeesMaster.setUniversity_exam_fees(rs.getInt("university_exam_fees"));
		courseFeesMaster.setCollege_exam_fees(rs.getInt("college_exam_fees"));
		courseFeesMaster.setId_card_fees(rs.getInt("id_card_fees"));
		courseFeesMaster.setEligibility_fees(rs.getInt("eligibility_fees"));
		courseFeesMaster.setClearance_fees(rs.getInt("clearance_fees"));
		courseFeesMaster.setExtra_curricular_activity(rs.getInt("extra_curricular_activity"));
		courseFeesMaster.setUniform_fees(rs.getInt("uniform_fees"));
		courseFeesMaster.setStudy_tour_fees(rs.getInt("study_tour_fees"));
		courseFeesMaster.setTotal(rs.getInt("total"));
		

		return courseFeesMaster;
	}

}
