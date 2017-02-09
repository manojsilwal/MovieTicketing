package edu.waaProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.waaProject.domain.Show;
import edu.waaProject.service.ShowService;

@RestController
public class ShowController {
	@Autowired
	private ShowService showService;

	/**
	 * this method is use to list the all show list.
	 * 
	 * @return
	 */

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public List<Show> getAllShow() {
		try {
			System.out.println("Successfully listed show list with :"+showService.findAll().size()+" number of rows");
			return showService.findAll();

		} catch (Exception e) {
			System.err.println("Error in geting all show data:" + e.getMessage());
			return null;
		}

	}

	/**
	 * this method add show
	 */
	@RequestMapping(value = "/show", method = RequestMethod.POST)
	public Show addShow(@RequestBody Show show) {
		System.out.println("---------------------------"+show.getEndTime());
		String showId = "";
		try {
			showId=String.valueOf(show.getShowId());
			System.err.println("Successfully added show with showId :" + showId);
			return showService.save(show);

		} catch (Exception e) {
			System.err.println("Errors in adding show with showId :" + showId + " " + e.getMessage());
			return null;

		}
	}
	
	/**
	 * this method updates show
	 */
	@RequestMapping(value = "/show", method = RequestMethod.PUT)
	public Show updateShow(@RequestBody Show show) {
		String showId = "";
		try {
			showId=String.valueOf(show.getShowId());
			System.err.println("Successfully updated show with showId :" + showId);
			return showService.save(show);

		} catch (Exception e) {
			System.err.println("Errors in adding show with showId :" + showId + " " + e.getMessage());
			return null;

		}
	}
	
	/**
	 * this method delete show
	 */
	@RequestMapping(value = "/show/{showId}", method = RequestMethod.DELETE)
	public void deleteShow(@PathVariable long showId) {
		try {
			System.err.println("Successfully deleted show with showId :" + showId);
			 showService.delete(showId);

		} catch (Exception e) {
			System.err.println("Errors in deleting show with showId :" + showId + " " + e.getMessage());
		}
	}

}
