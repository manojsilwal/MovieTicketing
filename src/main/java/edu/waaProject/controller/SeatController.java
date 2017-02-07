package edu.waaProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.waaProject.domain.Seats;
import edu.waaProject.service.SeatService;

@RestController
public class SeatController {
	@Autowired
	private SeatService seatService;

	/**
	 * this method is use to list the all seats list.
	 * 
	 * @return
	 */

	@RequestMapping(value = "/seats", method = RequestMethod.GET)
	public List<Seats> getAllSeats() {
		try {
			System.out.println("Successfully listed seats list with :"+seatService.findAll().size()+" number of rows");
			return seatService.findAll();

		} catch (Exception e) {
			System.err.println("Error in geting all seats data:" + e.getMessage());
			return null;
		}

	}

	/**
	 * this method add seats
	 */
	@RequestMapping(value = "/seats", method = RequestMethod.POST)
	public Seats addSeat(@RequestBody Seats seats) {
		String seatId = "";
		try {
			seatId=String.valueOf(seats.getSeatId());
			System.err.println("Successfully added seats with seatId :" + seatId);
			return seatService.save(seats);

		} catch (Exception e) {
			System.err.println("Errors in adding seats with seatId :" + seatId + " " + e.getMessage());
			return null;

		}
	}
	
	/**
	 * this method updates seats
	 */
	@RequestMapping(value = "/seats", method = RequestMethod.PUT)
	public Seats updateSeat(@RequestBody Seats seats) {
		String seatId = "";
		try {
			seatId=String.valueOf(seats.getSeatId());
			System.err.println("Successfully updated seats with seatId :" + seatId);
			return seatService.save(seats);

		} catch (Exception e) {
			System.err.println("Errors in adding seats with seatId :" + seatId + " " + e.getMessage());
			return null;

		}
	}
	
	/**
	 * this method delete seats
	 */
	@RequestMapping(value = "/seats/{seatId}", method = RequestMethod.DELETE)
	public void deleteSeat(@PathVariable int seatId) {
		try {
			System.err.println("Successfully deleted seats with seatId :" + seatId);
			 seatService.delete(seatId);

		} catch (Exception e) {
			System.err.println("Errors in deleting seats with seatId :" + seatId + " " + e.getMessage());
		}
	}

}
