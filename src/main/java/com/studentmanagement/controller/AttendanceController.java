package com.studentmanagement.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.studentmanagement.api.Attendance;
import com.studentmanagement.api.CourseFeesMaster;
import com.studentmanagement.api.Student;
import com.studentmanagement.api.Subject;
import com.studentmanagement.service.AttendanceService;
import com.studentmanagement.service.CourseFeesMasterService;
import com.studentmanagement.service.SubjectService;

@Controller
public class AttendanceController {

	@Autowired
	private AttendanceService attendanceService;

	@Autowired
	private CourseFeesMasterService courseFeesMasterService;

	@Autowired
	private SubjectService subjectService;

	@GetMapping("/showAttendance")
	public String showAttendance(Model model) {

		Attendance attendance = new Attendance();
		model.addAttribute("attendance", attendance);

		return "attendance-list";
	}

	@PostMapping("/takeAttendance")
	public String takeAttendance(@RequestParam("class_name") String class_name,
			@RequestParam("subject_name") String subject_name, @RequestParam("date") String date,
			HttpServletRequest req, HttpServletResponse res, Model model) throws IOException {

		Attendance attendance = new Attendance();
		attendance.setClass_name(class_name);
		attendance.setSubject_name(subject_name);
		attendance.setDate(date);

		List<Student> studentList = attendanceService.getStudent(class_name);
		List<String> studentName = new ArrayList<String>();
		for (Student tempStudent : studentList) {
			String tempStudentName = tempStudent.getFirst_name() + " " + tempStudent.getLast_name();
			studentName.add(tempStudentName);
			System.out.println(tempStudentName);
		}
		model.addAttribute("studentList", studentName);
		model.addAttribute("attendance", attendance);

		return "take-attendance";
	}

	@PostMapping("save-attendance")
	public String saveAttendance(Attendance attendance) {

		attendanceService.saveAttendance(attendance);

		return "redirect:/showAttendance";
	}

	@ModelAttribute("courseList")
	public List<String> getCourseList() {

		List<CourseFeesMaster> courseList = courseFeesMasterService.loadCourse();
		List<String> courseName = new ArrayList<String>();
		for (CourseFeesMaster tempCourse : courseList) {
			String tempCourseName = tempCourse.getCourse_name();
			courseName.add(tempCourseName);
			System.out.println(tempCourseName);
		}

		return courseName;
	}

	@ModelAttribute("subjectList")
	public List<String> getSubjectList() {

		List<Subject> subjectList = subjectService.loadSubject();
		List<String> subjectName = new ArrayList<String>();
		for (Subject tempSubject : subjectList) {
			String tempSubjectName = tempSubject.getSubject_name();
			subjectName.add(tempSubjectName);
			System.out.println(tempSubjectName);
		}

		return subjectName;
	}
	
	@GetMapping("/showAttendanceReport")
	public String showAttendanceReport() {
		return "attendance-report";
	}

	@GetMapping("attendance-report")
	public String attendanceReport(Model model, @RequestParam("from") String from, @RequestParam("to") String to,
			@RequestParam("class_name") String class_name) {
		
		List<Attendance> attendanceList = attendanceService.loadAttendance(from, to, class_name);
		model.addAttribute("attendanceReport", attendanceList);

		return "attendance-report";
	}

}
