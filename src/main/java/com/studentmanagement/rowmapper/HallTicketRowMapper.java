package com.studentmanagement.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentmanagement.api.HallTicket;

public class HallTicketRowMapper implements RowMapper<HallTicket>{

	@Override
	public HallTicket mapRow(ResultSet rs, int rowNum) throws SQLException {
		HallTicket hallTicket = new HallTicket();
		hallTicket.setHall_ticket_id(rs.getInt("hall_ticket_id"));
		hallTicket.setCandidate_name(rs.getString("candidate_name"));
		hallTicket.setId(rs.getInt("id"));
		hallTicket.setExam_date(rs.getString("exam_date"));
		hallTicket.setExam_time(rs.getString("exam_time"));
		hallTicket.setReporting_time(rs.getString("reporting_time"));
		hallTicket.setGate_close_time(rs.getString("gate_close_time"));
		hallTicket.setRoll_no(rs.getString("roll_no"));
		hallTicket.setPass(rs.getString("pass"));
		hallTicket.setQue_paper_language(rs.getString("que_paper_language"));
		hallTicket.setSubject(rs.getString("subject"));
		hallTicket.setVenue_code(rs.getString("venue_code"));
		hallTicket.setExam_centre_detail(rs.getString("exam_centre_detail"));
		hallTicket.setPhoto(rs.getString("photo"));
		hallTicket.setGender(rs.getString("gender"));
		hallTicket.setDob(rs.getString("dob"));
		hallTicket.setApplication_number(rs.getString("application_number"));
		hallTicket.setIs_disable(rs.getString("is_disable"));
		hallTicket.setDisablity_type(rs.getString("disablity_type"));
		hallTicket.setExtra_time_Req(rs.getString("extra_time_Req"));
		hallTicket.setScribe_req(rs.getString("scribe_req"));
		hallTicket.setCandidate_add(rs.getString("candidate_add"));
		

		return hallTicket;
	}

}
