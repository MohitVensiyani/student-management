package com.studentmanagement.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.studentmanagement.api.Student;
import com.studentmanagement.api.StudentFees;
import com.studentmanagement.service.StudentFeesService;
import com.studentmanagement.service.StudentService;

@Controller
public class StudentFeesController {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private StudentFeesService studentFeesService;
	
	
	@GetMapping("feesStudent")
	public String showStudentFees(@RequestParam("userId") int id,Model model, HttpServletRequest request, HttpServletResponse response)throws IOException  {
		Student student = studentService.getStudent(id);
		
		
		
		request.setAttribute("students", student);
		
		List<StudentFees> fees = studentFeesService.loadFees(id);
		model.addAttribute("studentFees", fees);
		
		return "StudentFeesPage";
	}
	
	@GetMapping("addFees")
	public String addStudentFees(@RequestParam("userId") int id, Model model, HttpServletRequest req, HttpServletResponse res)throws IOException  {
		Student student = studentService.getStudent(id);
		req.setAttribute("students", student);
		
		StudentFees fees = new StudentFees();
		fees.setId(id);
		model.addAttribute("fees", fees);
		
		return "add-fees";
	}
	
	@GetMapping("save-fees")
	public void saveFees(StudentFees studentFees, Model model, HttpServletRequest request, HttpServletResponse response ) throws IOException {
		int id = studentFees.getId();
		
		 
		
		if(studentFees.getFees_id() == 0) {
			Student student = studentService.getStudent(id);
			int fees = student.getFees();
			int sum = studentFees.getAmount();
			/*
			 * for(StudentFees tempFees : feesList) { sum += tempFees.getAmount(); }
			 */
			
			System.out.println("-------------------------------" + sum);
			studentFees.setRemaining_balance(fees - sum);
			
			studentFeesService.saveFees(studentFees, id);
		}
		
		response.sendRedirect("feesStudent?userId=" + id);
	}
	

}
