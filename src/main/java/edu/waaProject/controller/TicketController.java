package edu.waaProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.waaProject.domain.Movie;
import edu.waaProject.domain.Tickets;
import edu.waaProject.service.TicketService;

@RestController
public class TicketController {

	@Autowired
	private TicketService ticketService;

	@RequestMapping(value = "/tickets", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Tickets> getMovies() {
		return ticketService.findAll();
	}

	@RequestMapping(value = "/tickets/{ticketNo}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Tickets getMovie(@PathVariable("ticketNo") int ticketNo) {
		return ticketService.findByTicketNo(ticketNo);
	}

	@RequestMapping(value = "/tickets", method = RequestMethod.POST, headers = "Accept=application/json")
	public Tickets addTicket(@RequestBody Tickets tickets) {
		String ticketNo = "";
		try {
			ticketNo = String.valueOf(tickets.getTicketNo());
			System.out.println("Data added successfully with id :" + ticketNo);
			ticketService.save(tickets);

		} catch (Exception ex) {
			System.out.println("Error in adding movie." + ex.toString());

		}
		return null;

	}

	@RequestMapping(value = "/tickets", method = RequestMethod.PUT, headers = "Accept=application/json")
	public Movie updateTicket(@RequestBody Tickets tickets) {
		String ticketNo = "";
		try {
			ticketNo = String.valueOf(tickets.getTicketNo());
			System.out.println("Data updated successfully with id :" + ticketNo);
			ticketService.save(tickets);

		} catch (Exception ex) {
			System.out.println("Error in updating movie." + ex.toString());

		}
		return null;

	}

	@RequestMapping(value = "/tickets/{ticketNo}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteTicket(@PathVariable int ticketNo) {
		try {

			System.out.println("Data deleted successfully with id :" + ticketNo);
			ticketService.delete(ticketNo);

		} catch (Exception ex) {
			System.out.println("Error in deleting movie." + ex.toString());

		}

	}

}
