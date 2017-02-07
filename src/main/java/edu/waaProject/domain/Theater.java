package edu.waaProject.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Theater {
	@Id
	@GeneratedValue
	private int theaterId;

	@JsonIgnore
	@OneToMany(mappedBy = "theater", cascade = CascadeType.ALL)
	private List<Tickets> tickets;

	private String tname;

	@Embedded
	private Address address;

	@OneToMany(cascade = CascadeType.ALL)
	@JsonIgnore
	private List<Seats> seats;

	public int getTheaterId() {
		return theaterId;
	}

	public void setTheaterId(int theaterId) {
		this.theaterId = theaterId;
	}

	
	public List<Tickets> getTickets() {
		return tickets;
	}

	public void setTickets(List<Tickets> tickets) {
		this.tickets = tickets;
	}

	public List<Seats> getSeats() {
		return seats;
	}

	public void setSeats(List<Seats> seats) {
		this.seats = seats;
	}

	public int gettId() {
		return theaterId;
	}

	public void settId(int theaterId) {
		this.theaterId = theaterId;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
}
