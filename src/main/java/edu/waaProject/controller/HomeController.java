package edu.waaProject.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.waaProject.domain.Movie;
import edu.waaProject.service.MovieService;

@Controller
public class HomeController {

	@Autowired
	MovieService movieService;

	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}

	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@RequestMapping(value = "/addMovie", method = RequestMethod.GET)
	public String addMovieForm(Movie movie) {
		return "addMovie";
	}

	@RequestMapping(value = "/addMovie", method = RequestMethod.POST)
	public String addNewMovie(@ModelAttribute("movie") Movie movie, BindingResult result, Model model,
			@RequestParam MultipartFile image, @RequestParam("releaseDate") String releaseDate)
			throws IOException, ParseException {
		if (image != null) {
			movie.setImage(image.getBytes());
		}

		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = df.parse(releaseDate);

		movie.setReleaseDate(startDate);

		movieService.save(movie);
		return "redirect:/index";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String afteraddMovie(Movie movie) {
		return "index";
	}

	@RequestMapping(value = "/images/{movieId}", method = RequestMethod.GET)
	public void getImageForProduct(@PathVariable("movieId") int movieId, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("getting image");

		Movie movie = movieService.findByMovieId(movieId);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		ServletOutputStream out = response.getOutputStream();
		out.write(movie.getImage());
		out.close();
	}

}
