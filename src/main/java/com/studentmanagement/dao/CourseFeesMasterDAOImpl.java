package com.studentmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentmanagement.api.CourseFeesMaster;
import com.studentmanagement.rowmapper.CourseMasterRowMapper;

@Repository
public class CourseFeesMasterDAOImpl implements CourseFeesMasterDao{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<CourseFeesMaster> loadCourse() {

		String sql = "SELECT * FROM course_fees_master";
		
		List<CourseFeesMaster> listOfCourse = jdbcTemplate.query(sql, new CourseMasterRowMapper());
		
		return listOfCourse;
	}

	@Override
	public void saveCourse(CourseFeesMaster courseFeeMaster) {

		Object[] sqlParameter = {courseFeeMaster.getCourse_name(),
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
				courseFeeMaster.getStudy_tour_fees(),
				courseFeeMaster.getTotal()
		};
		
		String sql = "INSERT INTO course_fees_master(course_name, prospectus_fees, registration_fees, tution_fees, library_fees, university_enr_fees, university_exam_fees, college_exam_fees, id_card_fees, eligibility_fees, clearance_fees, extra_curricular_activity, uniform_fees, study_tour_fees, total) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 record inserted");
	}

	@Override
	public void updateCourse(CourseFeesMaster courseFeeMaster) {

		Object[] sqlParameter = {courseFeeMaster.getCourse_name(),
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
				courseFeeMaster.getStudy_tour_fees(),
				courseFeeMaster.getTotal(),
				courseFeeMaster.getCourse_id()
		};
		
		String sql = "UPDATE course_fees_master set course_name=?, prospectus_fees=?, registration_fees=?, tution_fees=?, library_fees=?, university_enr_fees=?, university_exam_fees=?, college_exam_fees=?, id_card_fees=?, eligibility_fees=?, clearance_fees=?, extra_curricular_activity=?, uniform_fees=?, study_tour_fees=?, total=? WHERE course_id=?";
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 record updated");
	}

	@Override
	public CourseFeesMaster getCourse(int course_id) {

		String sql = "SELECT * FROM course_fees_master WHERE course_id=?";
		
		CourseFeesMaster courseFeeMaster = jdbcTemplate.queryForObject(sql, new CourseMasterRowMapper(), course_id);
		return courseFeeMaster;
	}

	@Override
	public void deleteCourse(int course_id) {

		String sql = "DELETE FROM course_fees_master WHERE course_id=?";
		jdbcTemplate.update(sql, course_id);
	}

}
