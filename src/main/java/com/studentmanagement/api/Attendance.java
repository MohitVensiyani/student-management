package com.studentmanagement.api;

public class Attendance {

	private int attendance_id;
	private String class_name;
	private String subject_name;
	private String date;
	private String student_name;
	private String attendance;
	public int getAttendance_id() {
		return attendance_id;
	}
	public void setAttendance_id(int attendance_id) {
		this.attendance_id = attendance_id;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public String getSubject_name() {
		return subject_name;
	}
	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public String getAttendance() {
		return attendance;
	}
	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}
	@Override
	public String toString() {
		return "Attendance [attendance_id=" + attendance_id + ", class_name=" + class_name + ", subject_name="
				+ subject_name + ", date=" + date + ", student_name=" + student_name + ", attendance=" + attendance
				+ "]";
	}
	
	
}
