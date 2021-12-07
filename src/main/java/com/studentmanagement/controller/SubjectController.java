package com.studentmanagement.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.studentmanagement.api.CourseFeesMaster;
import com.studentmanagement.api.Employee;
import com.studentmanagement.api.Subject;
import com.studentmanagement.service.CourseFeesMasterService;
import com.studentmanagement.service.EmployeeService;
import com.studentmanagement.service.SubjectService;

@Controller
public class SubjectController {

	@Autowired
	private SubjectService subjectService;
	
	@Autowired
	private CourseFeesMasterService courseFeesMasterService;
	
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/showSubject")
	public String getSubject(Model model) {
		
		List<Subject> subjectList = subjectService.loadSubject();
		
		for(Subject tempSubject : subjectList) {
			System.out.println(tempSubject);
		}
		
		model.addAttribute("subjects", subjectList);
		
		
		return "subject-list";
	}
	

	@GetMapping("showAddSubjectPage")
	public String addSubject(Model model) {
		Subject subject = new Subject();
		model.addAttribute("subject", subject);
		return "add-subject";
	}
	
	@PostMapping("save-subject")
	public String saveSubjects(Subject subject) {
		
		if(subject.getSubject_id() == 0) {
			subjectService.saveSubjects(subject);
		}
		else {
			subjectService.updateSubjects(subject);
		}
		
		return "redirect:/showSubject";
	}
	
	@GetMapping("/updateSubject")
	public String updateSubject(@RequestParam("userId") int subject_id, Model model) {
		System.out.println("Looking for Subject with id " + subject_id);
		
		Subject theSubject = subjectService.getSubject(subject_id);
		
		model.addAttribute("subject", theSubject);

		return "add-subject";
	}
	
	@GetMapping("/deleteSubject")
	public String deleteSubject(@RequestParam("userId") int subject_id) {
		
		subjectService.deleteSubject(subject_id);
		return "redirect:/showSubject";
	}
	
	@ModelAttribute("courseList")
	public List<String> getCourseList(){
		
		List<CourseFeesMaster> courseList = courseFeesMasterService.loadCourse();
		List<String> courseName = new ArrayList<String>();
		for(CourseFeesMaster tempCourse : courseList) {
			String tempCourseName = tempCourse.getCourse_name();
			courseName.add(tempCourseName);
			System.out.println(tempCourseName);
		}
		
		
		return courseName;
	}
	
	@ModelAttribute("employeeList")
	public List<String> getEmployeeList(){
		
		List<Employee> employeeList = employeeService.loadEmployee();
		List<String> employeeName = new ArrayList<String>();
		for(Employee tempEmployee : employeeList) {
			String tempEmployeeName = tempEmployee.getEmpName();
			employeeName.add(tempEmployeeName);
			System.out.println(tempEmployeeName);
		}
		
		
		return employeeName;
	}
	
}
