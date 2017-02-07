package edu.waaProject.domain;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
public class Movie {

	@Id
	@GeneratedValue
	private long movieId;

	@OneToMany(mappedBy = "movie", fetch = FetchType.EAGER)
	private List<Show> show;

	private String movieName;
	private String director;
	@Column(length = 100000)
	private String description;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date releaseDate;
	@ElementCollection(fetch = FetchType.EAGER)
	private List<String> actors;

	public List<Show> getShow() {
		return show;
	}

	public void setShow(List<Show> show) {
		this.show = show;
	}

	public long getMovieId() {
		return movieId;
	}

	public void setMovieId(long movieId) {
		this.movieId = movieId;
	}

	public String getMovieName() {
		return movieName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	public List<String> getActors() {
		return actors;
	}

	public void setActors(List<String> actors) {
		this.actors = actors;
	}

}
