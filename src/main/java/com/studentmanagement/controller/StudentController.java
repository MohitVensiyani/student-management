package com.studentmanagement.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.studentmanagement.api.CourseFeesMaster;
import com.studentmanagement.api.FileInfo;
import com.studentmanagement.api.Student;
import com.studentmanagement.service.CourseFeesMasterService;
import com.studentmanagement.service.StudentService;

@Controller
public class StudentController {
	
	private static String UPLOADED_FOLDER = "F://temp//";
	
	//@Autowired
	//private StudentDAO StudentDAO;
	
	@Autowired
    ServletContext context;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private CourseFeesMasterService courseFeesMasterService;
	

	//@RequestMapping(value = "/showStudent", method = RequestMethod.GET)
	@GetMapping("/showStudent")
	public String showStudentList(Model model) {
		
		List<Student> studentList = studentService.loadStudents();
		
		for(Student tempStudent : studentList) {
			System.out.println(tempStudent);
		}
		
		model.addAttribute("students", studentList);
		return "student-list";
	}
	
	@GetMapping("/showAddStudentPage")
	public String addStudent(Model model) {
		
		Student student = new Student();
		
		model.addAttribute("student", student);
		return "add-student";
	}

	
	//@ResponseBody
	@PostMapping("/save-student")
	public String saveStudent(Student student, @RequestParam("file") List < MultipartFile > files) {
		System.out.println(student);
		
		//do a condition check
		//if the user does not have id then do an insert
		//id the user does have an id do an update
		
		if(student.getId() == 0) {
			//insert a new record
			
			/*
			 * String name = file.getOriginalFilename(); if (!file.isEmpty()) { try { byte[]
			 * bytes = file.getBytes(); BufferedOutputStream stream = new
			 * BufferedOutputStream(new FileOutputStream(new File(name + "-uploaded")));
			 * stream.write(bytes); stream.close(); System.out.println(
			 * "You successfully uploaded " + name + " into " + name + "-uploaded !"); }
			 * catch (Exception e) { System.out.println("You failed to upload " + name +
			 * " => " + e.getMessage()); } } else {
			 * System.out.println("You failed to upload " + name +
			 * " because the file was empty."); }
			 * 
			 */
			
			 List < FileInfo > uploadedFiles = new ArrayList < FileInfo > ();
		        if (!files.isEmpty()) {
		            try {
		                for (MultipartFile file: files) {
		                    String path = context.getRealPath("src/main/webapp/resources/uploaded/Admission-Form-Data") + File.separator +
		                        file.getOriginalFilename();
		                    File destinationFile = new File(path);
		                    file.transferTo(destinationFile);
		                    uploadedFiles.add(new FileInfo(destinationFile.getName(), path));
		                    System.out.println(file.getOriginalFilename() + " uploaded in " + path);
		                }
		 
		            } catch (Exception e) {
		                System.out.println(e.getMessage());
		            }
		 
		        }
			
			System.out.println("Save Student " + student.getId());
			studentService.saveStudent(student);
		}
		else {
			//do an update
			System.out.println("Update Student " + student.getId());
			studentService.updateStudent(student);
		}
		
		return "redirect:/showStudent";
	}
	
	@GetMapping("/updateStudent")
	public String updateStudent(
			@RequestParam("userId") int id,
			Model model
			/*//@ModelAttribute("student") Student student
*/			) {
		
		System.out.println("Looking for Student with id " + id);
		
		Student theStudent = studentService.getStudent(id);
		
		System.out.println(theStudent);
		
		//setting the student information
		
		model.addAttribute("student", theStudent);
		
//		student.setId(theStudent.getId());
//		student.setName(theStudent.getName());
//		student.setMobile(theStudent.getMobile());
//		student.setCountry(theStudent.getCountry());
		return "add-student";
	}
	
	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("userId") int id) {
		
		//capture the id of student of whom you are trying to delete
		studentService.deleteStudent(id);
		
		return "redirect:/showStudent";
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
	
	
	@ResponseBody
	@GetMapping("/thankyou")
	public String thankYou() {
		return "Thank you!! your record has been added to the database";
	}
	
	
}












