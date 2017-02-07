package edu.waaProject.controller;

import java.util.List;

import javax.ws.rs.Path;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.waaProject.domain.Theater;
import edu.waaProject.service.TheaterService;

@RestController
public class TheaterController {

	@Autowired
	private TheaterService theaterService;

	/**
	 * this method list the theater list
	 * @return
	 */
	@RequestMapping(value = "/theater", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Theater> getTheaterList() {
		try {
			System.out.println("Successfully listed theater list ");
			return theaterService.findAll();

		} catch (Exception e) {
			System.err.println("Error in geting list of theater : " + e.getMessage());
			return null;

		}
	}

	/**
	 * this method is used to add the new theater 
	 * @param theater
	 * @return
	 */
	@RequestMapping(value = "/theater", method = RequestMethod.POST, headers = "Accept=application/json")
	public Theater addTheater(@RequestBody Theater theater) {
			String theaterId="";
		try {
			System.out.println("Successfully added theater with id :"+theater.getTheaterId());
			return theaterService.save(theater);

		} catch (Exception e) {
			System.err.println("Error in adding theater with id: "+ theaterId+ "/n"  + e.getMessage());
			return null;

		}
	}
	
	/**
	 * this method is used to update the theater 
	 * @param theater
	 * @return
	 */
	@RequestMapping(value = "/theater", method = RequestMethod.PUT, headers = "Accept=application/json")
	public Theater UpdateTheater(@RequestBody Theater theater) {
			String theaterId="";
		try {
			System.out.println("Successfully updated theater with id :"+theater.getTheaterId());
			return theaterService.save(theater);

		} catch (Exception e) {
			System.err.println("Error in updating theater with id: "+ theaterId+ "/n"  + e.getMessage());
			return null;

		}
	}
	
	
	
	/**
	 * this method is used to delete the theater 
	 * @param theater
	 * @return
	 */
	@RequestMapping(value = "/theater/{theaterId}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void delteTheater(@PathVariable int theaterId) {
		try {
			System.out.println("Successfully deleted theater id :"+theaterId);
			 theaterService.delete(theaterId);

		} catch (Exception e) {
			System.err.println("Error in deleting theater with id: "+ theaterId+ "/n"  + e.getMessage());

		}
	}
}
