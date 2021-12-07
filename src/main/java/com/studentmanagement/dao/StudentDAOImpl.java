package com.studentmanagement.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentmanagement.api.Student;
import com.studentmanagement.rowmapper.StudentRowMapper;

@Repository
public class StudentDAOImpl implements StudentDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Student> loadStudent() {
		// TODO Auto-generated method stub
				
		String sql = "SELECT * FROM students";
		
		List<Student> theListOfStudent = jdbcTemplate.query(sql, new StudentRowMapper());
		
		return theListOfStudent;
	}

	@Override
	public void saveStudent(Student student) {
		Object[] sqlParameter = {
				
				// fetching admission details
				student.getFirst_name(),
				student.getMiddle_name(),
				student.getLast_name(),
				student.getTenth_first_name(),
				student.getTenth_middle_name(),
				student.getTenth_last_name(),
				student.getFather_first_name(),
				student.getFather_middle_name(),
				student.getFather_last_name(),
				student.getMother_first_name(),
				student.getMother_middle_name(),
				student.getMother_last_name(),
				student.getPrev_first_name(),
				student.getPrev_middle_name(),
				student.getPrev_last_name(),
				student.getReason_for_change(),
				student.getMartial_status(),
				student.getPrev_sndtu_enrno(),
				student.getDob(),
				student.getPlace_of_birth(),
				student.getBlood_group(),
				student.getReligion(),
				student.getCitizen(),
				student.getLocation_category(),
				student.getCourse_admit(),
				student.getDivision(),
				student.getDate(),
				student.getRoll_no(),
				student.getForm_no(),
				student.getSignature(),
				student.getCourse_applied(),
				student.getMedium(),
				student.getAdmission_category(),
				student.getReserved_category(),
				student.getCurr_country(),
				student.getCurr_state(),
				student.getCurr_district(),
				student.getCurr_tahasil(),
				student.getCurr_pincode(),
				student.getCurr_loc_category(),
				student.getPer_country(),
				student.getPer_state(),
				student.getPer_district(),
				student.getPer_tahasil(),
				student.getPer_pincode(),
				student.getPer_loc_category(),
				student.getStd1(),
				student.getPhone1(),
				student.getStd2(),
				student.getPhone2(),
				student.getMobile_no(),
				student.getEmail(),
				student.getDomicile_state(),
				student.getCast_category(),
				student.getRes_cast_category(),
				student.getCast(),
				student.getSub_cast(),
				student.getPhysically_chalenged(), 
				student.getFees()
		};
		
		String sql = "INSERT INTO students(first_name, middle_name, last_name, tenth_first_name, tenth_middle_name, tenth_last_name,father_first_name, father_middle_name, father_last_name, mother_first_name, mother_middle_name, mother_last_name, prev_first_name, prev_middle_name, prev_last_name, reason_for_change, martial_status, prev_sndtu_enrno, dob, place_of_birth, blood_group, religion, citizen, location_category, course_admit, division, date, roll_no, form_no, signature, course_applied, medium, admission_category, reserved_category, curr_country, curr_state, curr_district, curr_tahasil, curr_pincode, curr_loc_category, per_country, per_state, per_district, per_tahasil, per_pincode, per_loc_category, std1, phone1, std2, phone2, mobile_no, email, domicile_state, cast_category, res_cast_category, cast, sub_cast, physically_chalenged, fees ) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
																	
		jdbcTemplate.update(sql, sqlParameter);
		
		System.out.println("1 record Updated..");
	}

	@Override
	public Student getStudent(int id) {
		
		String sql = "SELECT * FROM students WHERE id=?";
		
		Student student = jdbcTemplate.queryForObject(sql, new StudentRowMapper(), id);
		
		return student;
	}

	@Override
	public void updateStudent(Student student) {

		Object[] sqlParameter = {
				
				// fetching admission details
				student.getFirst_name(),
				student.getMiddle_name(),
				student.getLast_name(),
				student.getTenth_first_name(),
				student.getTenth_middle_name(),
				student.getTenth_last_name(),
				student.getFather_first_name(),
				student.getFather_middle_name(),
				student.getFather_last_name(),
				student.getMother_first_name(),
				student.getMother_middle_name(),
				student.getMother_last_name(),
				student.getPrev_first_name(),
				student.getPrev_middle_name(),
				student.getPrev_last_name(),
				student.getReason_for_change(),
				student.getMartial_status(),
				student.getPrev_sndtu_enrno(),
				student.getDob(),
				student.getPlace_of_birth(),
				student.getBlood_group(),
				student.getReligion(),
				student.getCitizen(),
				student.getLocation_category(),
				student.getCourse_admit(),
				student.getDivision(),
				student.getDate(),
				student.getRoll_no(),
				student.getForm_no(),
				student.getSignature(),
				student.getCourse_applied(),
				student.getMedium(),
				student.getAdmission_category(),
				student.getReserved_category(),
				student.getCurr_country(),
				student.getCurr_state(),
				student.getCurr_district(),
				student.getCurr_tahasil(),
				student.getCurr_pincode(),
				student.getCurr_loc_category(),
				student.getPer_country(),
				student.getPer_state(),
				student.getPer_district(),
				student.getPer_tahasil(),
				student.getPer_pincode(),
				student.getPer_loc_category(),
				student.getStd1(),
				student.getPhone1(),
				student.getStd2(),
				student.getPhone2(),
				student.getMobile_no(),
				student.getEmail(),
				student.getDomicile_state(),
				student.getCast_category(),
				student.getRes_cast_category(),
				student.getCast(),
				student.getSub_cast(),
				student.getPhysically_chalenged(),
				student.getFees(),
				student.getId()
		};
		
		String sql = "UPDATE students SET first_name=?, middle_name=?, last_name=?, tenth_first_name=?, tenth_middle_name=?, tenth_last_name=?, father_first_name=?, father_middle_name=?, father_last_name=?, mother_first_name=?, mother_middle_name=?, mother_last_name=?, prev_first_name=?, prev_middle_name=?, prev_last_name=?, reason_for_change=?, martial_status=?, prev_sndtu_enrno=?, dob=?, place_of_birth=?, blood_group=?, religion=?, citizen=?, location_category=?, course_admit=?, division=?, date=?, roll_no=?, form_no=?, signature=?, course_applied=?, medium=?, admission_category=?, reserved_category=?, curr_country=?, curr_state=?, curr_district=?, curr_tahasil=?, curr_pincode=?, curr_loc_category=?, per_country=?, per_state=?, per_district=?, per_tahasil=?, per_pincode=?, per_loc_category=?, std1=?, phone1=?, std2=?, phone2=?, mobile_no=?, email=?, domicile_state=?, cast_category=?, res_cast_category=?, cast=?, sub_cast=?, physically_chalenged=?, fees=? where id=?";
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 record Updated");
	}

	@Override
	public void deleteStudent(int id) {
		String sql = "DELETE FROM students WHERE id=?";
		jdbcTemplate.update(sql, id);
	}

	

}
