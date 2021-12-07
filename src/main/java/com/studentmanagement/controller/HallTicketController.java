package com.studentmanagement.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.studentmanagement.api.FileInfo;
import com.studentmanagement.api.HallTicket;
import com.studentmanagement.service.HallTicketService;

@Controller
public class HallTicketController {
	
	@Autowired
    ServletContext context;
	
	@Autowired
	private HallTicketService hallTicketService;
	
	@GetMapping("/showHallTicket")
	public String showHallticket(Model model) {
		List<HallTicket> listOfHallTicket = hallTicketService.loadHallticket();
		model.addAttribute("hallTickets", listOfHallTicket);
		return "hallTicket-list";
	}
	
	@GetMapping("showAddHallTicketPage")
	public String addHallTicket(Model model) {
		HallTicket hallTicket = new HallTicket();
		model.addAttribute("hallTicket", hallTicket);
		return "hall-ticket";
	}
	
	@PostMapping("save-hallTicket")
	public String saveHallTicket(HallTicket hallTicket, @RequestParam("file") List < MultipartFile > files, Model model) {
		 List < FileInfo > uploadedFiles = new ArrayList < FileInfo > ();
	        if (!files.isEmpty()) {
	            try {
	                for (MultipartFile file: files) {
	                    String path = context.getRealPath("src/main/webapp/resources/uploaded/Hallticket-Data") + File.separator +
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
	        
	        model.addAttribute("files", uploadedFiles);
		
		hallTicketService.saveHallTicket(hallTicket);
		return "redirect:/showHallTicket";
	}
	
	@GetMapping("/printHallTicket")
	public String printHallTicket(@RequestParam("userId") int hall_ticket_id, Model model) {
		HallTicket hallTicket = hallTicketService.getHallTicket(hall_ticket_id);
		model.addAttribute("hallTicket", hallTicket);
		return "print-hall-ticket";
	}

}
