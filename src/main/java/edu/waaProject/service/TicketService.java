package edu.waaProject.service;

import java.util.List;

import edu.waaProject.domain.Tickets;

public interface TicketService {
	void save(Tickets Tickets);

	void delete(int ticketNo);

	Tickets findByTicketNo(int ticketNo);

	List<Tickets> findAll();

	void update(Tickets Tickets);
}
