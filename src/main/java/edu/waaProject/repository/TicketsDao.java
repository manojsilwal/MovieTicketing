package edu.waaProject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.waaProject.domain.Tickets;

public interface TicketsDao extends JpaRepository<Tickets, Integer> {
	Tickets findByTicketNo(int ticketNo);
	List<Tickets> findAll();
}
