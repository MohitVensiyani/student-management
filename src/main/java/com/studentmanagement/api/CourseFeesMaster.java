package com.studentmanagement.api;

public class CourseFeesMaster {
	
	private int course_id;
	private String course_name;
	private int prospectus_fees;
	private int registration_fees;
	private int tution_fees;
	private int library_fees;
	private int university_enr_fees;
	private int university_exam_fees;
	private int college_exam_fees;
	private int id_card_fees;
	private int eligibility_fees;
	private int clearance_fees;
	private int extra_curricular_activity;
	private int uniform_fees;
	private int study_tour_fees;
	private int total;
	public int getCourse_id() {
		return course_id;
	}
	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public int getProspectus_fees() {
		return prospectus_fees;
	}
	public void setProspectus_fees(int prospectus_fees) {
		this.prospectus_fees = prospectus_fees;
	}
	public int getRegistration_fees() {
		return registration_fees;
	}
	public void setRegistration_fees(int registration_fees) {
		this.registration_fees = registration_fees;
	}
	public int getTution_fees() {
		return tution_fees;
	}
	public void setTution_fees(int tution_fees) {
		this.tution_fees = tution_fees;
	}
	public int getLibrary_fees() {
		return library_fees;
	}
	public void setLibrary_fees(int library_fees) {
		this.library_fees = library_fees;
	}
	public int getUniversity_enr_fees() {
		return university_enr_fees;
	}
	public void setUniversity_enr_fees(int university_enr_fees) {
		this.university_enr_fees = university_enr_fees;
	}
	public int getUniversity_exam_fees() {
		return university_exam_fees;
	}
	public void setUniversity_exam_fees(int university_exam_fees) {
		this.university_exam_fees = university_exam_fees;
	}
	public int getCollege_exam_fees() {
		return college_exam_fees;
	}
	public void setCollege_exam_fees(int college_exam_fees) {
		this.college_exam_fees = college_exam_fees;
	}
	public int getId_card_fees() {
		return id_card_fees;
	}
	public void setId_card_fees(int id_card_fees) {
		this.id_card_fees = id_card_fees;
	}
	public int getEligibility_fees() {
		return eligibility_fees;
	}
	public void setEligibility_fees(int eligibility_fees) {
		this.eligibility_fees = eligibility_fees;
	}
	public int getClearance_fees() {
		return clearance_fees;
	}
	public void setClearance_fees(int clearance_fees) {
		this.clearance_fees = clearance_fees;
	}
	public int getExtra_curricular_activity() {
		return extra_curricular_activity;
	}
	public void setExtra_curricular_activity(int extra_curricular_activity) {
		this.extra_curricular_activity = extra_curricular_activity;
	}
	public int getUniform_fees() {
		return uniform_fees;
	}
	public void setUniform_fees(int uniform_fees) {
		this.uniform_fees = uniform_fees;
	}
	public int getStudy_tour_fees() {
		return study_tour_fees;
	}
	public void setStudy_tour_fees(int study_tour_fees) {
		this.study_tour_fees = study_tour_fees;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "CourseFeesMaster [course_id=" + course_id + ", course_name=" + course_name + ", prospectus_fees="
				+ prospectus_fees + ", registration_fees=" + registration_fees + ", tution_fees=" + tution_fees
				+ ", library_fees=" + library_fees + ", university_enr_fees=" + university_enr_fees
				+ ", university_exam_fees=" + university_exam_fees + ", college_exam_fees=" + college_exam_fees
				+ ", id_card_fees=" + id_card_fees + ", eligibility_fees=" + eligibility_fees + ", clearance_fees="
				+ clearance_fees + ", extra_curricular_activity=" + extra_curricular_activity + ", uniform_fees="
				+ uniform_fees + ", study_tour_fees=" + study_tour_fees + ", total=" + total + "]";
	}
	
	

}
