package com.studentmanagement.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentmanagement.api.Student;

public class StudentRowMapper implements RowMapper<Student>{

	@Override
	public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Student student = new Student();
		
		student.setId(rs.getInt("id")); 

		student.setFirst_name(rs.getString("first_name"));
		student.setMiddle_name(rs.getString("middle_name"));
		student.setLast_name(rs.getString("last_name"));
		student.setTenth_first_name(rs.getString("tenth_first_name"));
		student.setTenth_middle_name(rs.getString("tenth_middle_name"));
		student.setTenth_last_name(rs.getString("tenth_last_name"));
		student.setFather_first_name(rs.getString("father_first_name"));
		student.setFather_middle_name(rs.getString("father_middle_name"));
		student.setFather_last_name(rs.getString("father_last_name"));
		student.setMother_first_name(rs.getString("mother_first_name"));
		student.setMother_middle_name(rs.getString("mother_middle_name"));
		student.setMother_last_name(rs.getString("mother_last_name"));
		student.setPrev_first_name(rs.getString("prev_first_name"));
		student.setPrev_middle_name(rs.getString("prev_middle_name"));
		student.setPrev_last_name(rs.getString("prev_last_name"));
		student.setReason_for_change(rs.getString("reason_for_change"));
		student.setMartial_status(rs.getString("martial_status"));
		student.setPrev_sndtu_enrno(rs.getString("prev_sndtu_enrno"));
		student.setDob(rs.getString("dob"));
		student.setPlace_of_birth(rs.getString("place_of_birth"));
		student.setBlood_group(rs.getString("blood_group"));
		student.setReligion(rs.getString("religion"));
		student.setCitizen(rs.getString("citizen"));
		student.setLocation_category(rs.getString("location_category"));
		student.setCourse_admit(rs.getString("course_admit"));
		student.setDivision(rs.getString("division"));
		student.setDate(rs.getString("date"));
		student.setRoll_no(rs.getString("roll_no"));
		student.setForm_no(rs.getString("form_no"));
		student.setSignature(rs.getString("signature"));
		student.setCourse_applied(rs.getString("course_applied"));
		student.setMedium(rs.getString("medium"));
		student.setAdmission_category(rs.getString("admission_category"));
		student.setReserved_category(rs.getString("reserved_category"));
		student.setCurr_country(rs.getString("curr_country"));
		student.setCurr_state(rs.getString("curr_state"));
		student.setCurr_district(rs.getString("curr_district"));
		student.setCurr_tahasil(rs.getString("curr_tahasil"));
		student.setCurr_pincode(rs.getString("curr_pincode"));
		student.setCurr_loc_category(rs.getString("curr_loc_category"));
		student.setPer_country(rs.getString("per_country"));
		student.setPer_state(rs.getString("per_state"));
		student.setPer_district(rs.getString("per_district"));
		student.setPer_tahasil(rs.getString("per_tahasil"));
		student.setPer_pincode(rs.getString("per_pincode"));
		student.setPer_loc_category(rs.getString("per_loc_category"));
		student.setStd1(rs.getString("std1"));
		student.setPhone1(rs.getString("phone1"));
		student.setStd2(rs.getString("std2"));
		student.setPhone2(rs.getString("phone2"));
		student.setMobile_no(rs.getString("mobile_no"));
		student.setEmail(rs.getString("email"));
		student.setDomicile_state(rs.getString("domicile_state"));
		student.setCast_category(rs.getString("cast_category"));
		student.setRes_cast_category(rs.getString("res_cast_category"));
		student.setCast(rs.getString("cast"));
		student.setSub_cast(rs.getString("sub_cast"));
		student.setPhysically_chalenged(rs.getString("physically_chalenged"));
		student.setFees(rs.getInt("fees"));
		
		
		
		return student;
	}

}
