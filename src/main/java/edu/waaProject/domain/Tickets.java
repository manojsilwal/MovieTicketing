package edu.waaProject.domain;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Tickets {
	@Id
	@GeneratedValue
	private int ticketNo;
	private double price;
	@ManyToOne
	@JoinColumn(name = "theaterId")
	private Theater theater;
	@OneToMany(mappedBy = "tickets", cascade = CascadeType.ALL)
	private List<Seats> seats;
	private Date showDate;
	private Time showTime;
	@ManyToOne
	@JoinColumn(name = "bookingId")
	private Booking booking;
	@ManyToOne
	@JoinColumn(name = "showId")
	private Show show;

	public List<Seats> getSeats() {
		return seats;
	}

	public void setSeats(List<Seats> seats) {
		this.seats = seats;
	}

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

	public List<Seats> getSeat() {
		return seats;
	}

	public void setSeat(List<Seats> seats) {
		this.seats = seats;
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
