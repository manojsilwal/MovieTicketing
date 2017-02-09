package edu.waaProject.domain;

import java.sql.Time;
import java.util.Date;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
public class Tickets {

	@Id
	@GeneratedValue
	private int ticketNo;
	
	private double price;
	
	@ManyToOne
	@JoinColumn(name = "theaterId")
	@JsonIgnoreProperties("tickets")
	private Theater theater;
	
	@JsonFormat(pattern="HH:MM:SS")
	// seat
	@ElementCollection(fetch = FetchType.EAGER)
	private List<String> seats;

	public List<String> getSeats() {
		return seats;
	}

	public void setSeats(List<String> seats) {
		this.seats = seats;
	}

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date showDate;
	@JsonFormat(pattern = "HH:MM:SS")
	private Time showTime;
	
	@ManyToOne
	@JoinColumn(name = "bookingId")
	@JsonIgnoreProperties("tickets")
	private Booking booking;
	
	@ManyToOne
	@JoinColumn(name = "showId")
	@JsonIgnoreProperties("tickets")
	private Show show;

	public Booking getBooking() {
		return booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}

	public Show getShow() {
		return show;
	}

	public void setShow(Show show) {
		this.show = show;
	}

	public int getTicketNo() {
		return ticketNo;
	}

	public void setTicketNo(int ticketNo) {
		this.ticketNo = ticketNo;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Theater getTheater() {
		return theater;
	}

	public void setTheater(Theater theater) {
		this.theater = theater;
	}

	public Date getShowDate() {
		return showDate;
	}

	public void setShowDate(Date showDate) {
		this.showDate = showDate;
	}

	public Time getShowTime() {
		return showTime;
	}

	public void setShowTime(Time showTime) {
		this.showTime = showTime;
	}

}
