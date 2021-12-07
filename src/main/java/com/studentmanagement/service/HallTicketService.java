package com.studentmanagement.service;

import java.util.List;

import com.studentmanagement.api.HallTicket;

public interface HallTicketService {
	
	List<HallTicket> loadHallticket();
	
	void saveHallTicket(HallTicket hallTicket);

	HallTicket getHallTicket(int hall_ticket_id);
	
	void printHallTicket(HallTicket hallTicket);

}
