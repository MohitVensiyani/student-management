package com.studentmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.studentmanagement.api.CourseFeesMaster;
import com.studentmanagement.service.CourseFeesMasterService;

@Controller
public class CourseFeesMasterController {
	
	@Autowired
	private CourseFeesMasterService courseFeesMasterService;

	@GetMapping("showCourse")
	public String getCourse(Model model) {
		
		List<CourseFeesMaster> courseList = courseFeesMasterService.loadCourse();
		
		for(CourseFeesMaster tempCourse : courseList) {
			System.out.println(tempCourse);
		}
		
		model.addAttribute("courses", courseList);
		
		return "course-fee-list";
	}
	
	@GetMapping("showAddCoursePage")
	public String addCourse(Model model) {
		CourseFeesMaster courseFeesMaster = new CourseFeesMaster();
		model.addAttribute("course", courseFeesMaster);
		return "add-course";
	}
	
	@PostMapping("save-course")
	public String saveCourse(CourseFeesMaster courseFeesMaster) {
		
		if(courseFeesMaster.getCourse_id() == 0) {
			courseFeesMasterService.saveCourse(courseFeesMaster);
		}
		else {
			courseFeesMasterService.updateCourse(courseFeesMaster);
		}
		
		return "redirect:/showCourse";
	}
	
	@GetMapping("/updateCourse")
	public String updatCourse(@RequestParam("userId") int course_id, Model model){
		System.out.println("Looking for Course with id " + course_id);
		
		CourseFeesMaster courseFeesMaster = courseFeesMasterService.getCourse(course_id);
		
		model.addAttribute("course", courseFeesMaster);
		
		return "add-course";
	}
	
	@GetMapping("/deleteCourse")
	public String deleteCourse(@RequestParam("userId") int course_id) {
		
		courseFeesMasterService.deleteCourse(course_id);
		
		return "redirect:/showCourse";
	}
	
}




















