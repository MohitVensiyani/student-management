package com.studentmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentmanagement.api.HallTicket;
import com.studentmanagement.rowmapper.HallTicketRowMapper;

@Repository
public class HallTicketDAOImpl implements HallTicketDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	

	@Override
	public List<HallTicket> loadHallticket() {
		
		String sql = "SELECT * from hall_ticket";
		
		List<HallTicket> listOfHallTicket = jdbcTemplate.query(sql, new HallTicketRowMapper());

		return listOfHallTicket;
	}

	@Override
	public void saveHallTicket(HallTicket hallTicket) {
		
		Object[] sqlParameter = {hallTicket.getId(),
				hallTicket.getCandidate_name(),
				hallTicket.getExam_date(),
				hallTicket.getExam_time(),
				hallTicket.getReporting_time(),
				hallTicket.getGate_close_time(),
				hallTicket.getRoll_no(),
				hallTicket.getPass(),
				hallTicket.getQue_paper_language(),
				hallTicket.getSubject(),
				hallTicket.getVenue_code(),
				hallTicket.getExam_centre_detail(),
				hallTicket.getPhoto(),
				hallTicket.getGender(),
				hallTicket.getDob(),
				hallTicket.getApplication_number(),
				hallTicket.getIs_disable(),
				hallTicket.getDisablity_type(),
				hallTicket.getExtra_time_Req(),
				hallTicket.getScribe_req(),
				hallTicket.getCandidate_add()
		};
		
		String sql = "INSERT INTO hall_ticket(id, candidate_name, exam_date, exam_time, reporting_time, gate_close_time, roll_no, pass, que_paper_language, subject, venue_code, exam_centre_detail, photo, gender, dob, application_number, is_disable, disablity_type, extra_time_Req, scribe_req, candidate_add) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 record inserted");
	}

	@Override
	public HallTicket getHallTicket(int hall_ticket_id) {
		
		String sql = "SELECT * FROM hall_ticket WHERE hall_ticket_id=?";
		HallTicket hallTicket = jdbcTemplate.queryForObject(sql, new HallTicketRowMapper(), hall_ticket_id);
		return hallTicket;
	}

	@Override
	public void printHallTicket(HallTicket hallTicket) {
		
	}
	
	

}
