package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentmanagement.api.HallTicket;
import com.studentmanagement.dao.HallTicketDAO;

@Service
public class HallTicketServiceImpl implements HallTicketService{
	
	@Autowired
	private HallTicketDAO hallTickerDAO;

	@Override
	public List<HallTicket> loadHallticket() {
		
		List<HallTicket> hallTicketList = hallTickerDAO.loadHallticket();
		return hallTicketList;
	}

	@Override
	public void saveHallTicket(HallTicket hallTicket) {
		hallTickerDAO.saveHallTicket(hallTicket);
	}

	@Override
	public HallTicket getHallTicket(int hall_ticket_id) {
		return hallTickerDAO.getHallTicket(hall_ticket_id);
	}

	@Override
	public void printHallTicket(HallTicket hallTicket) {
		
		hallTickerDAO.printHallTicket(hallTicket);
		
	}
	
	

}
