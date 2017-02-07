package edu.waaProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.waaProject.domain.Tickets;
import edu.waaProject.repository.TicketsDao;

@Service
public class TicketServiceImpl implements TicketService {
	// added
	@Autowired
	TicketsDao ticketsDao;

	@Override
	public List<Tickets> findAll() {
		// TODO Auto-generated method stub
		return ticketsDao.findAll();
	}

	@Override
	public void save(Tickets Tickets) {
		// TODO Auto-generated method stub
		ticketsDao.save(Tickets);
	}

	@Override
	public void delete(int ticketNo) {
		// TODO Auto-generated method stub
		ticketsDao.delete(ticketNo);
	}

	@Override
	public void update(Tickets Tickets) {
		// TODO Auto-generated method stub
		ticketsDao.save(Tickets);
	}

	@Override
	public Tickets findByTicketNo(int ticketNo) {
		// TODO Auto-generated method stub
		return ticketsDao.findByTicketNo(ticketNo);
	}

}
