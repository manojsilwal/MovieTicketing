package edu.waaProject.domain;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity(name = "movieShow")
public class Show {

	@Id
	@GeneratedValue
	private long showId;

	@ManyToOne
	@JoinColumn(name = "movieId")
	@JsonIgnoreProperties("show")
	private Movie movie;

	@OneToMany(mappedBy = "show", fetch = FetchType.EAGER)
	@JsonIgnoreProperties("show")
	private List<Tickets> tickets;

	private String language;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date startTime;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date endTime;

	public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	public List<Tickets> getTickets() {
		return tickets;
	}

	public void setTickets(List<Tickets> tickets) {
		this.tickets = tickets;
	}

	public long getShowId() {
		return showId;
	}

	public void setShowId(long showId) {
		this.showId = showId;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

}
