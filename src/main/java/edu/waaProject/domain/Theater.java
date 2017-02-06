package edu.waaProject.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Theater {
	@Id
	@GeneratedValue
	private int theaterId;
	@OneToMany(mappedBy = "theater", cascade = CascadeType.ALL)
	private List<Tickets> tickets;

	public List<Tickets> getTickets() {
		return tickets;
	}

	public void setTickets(List<Tickets> tickets) {
		this.tickets = tickets;
	}

	private String tname;

	@OneToMany(cascade = CascadeType.ALL)
	private List<Seats> seats;

	public List<Seats> getSeats() {
		return seats;
	}

	public void setSeats(List<Seats> seats) {
		this.seats = seats;
	}

	@Embedded
	private Address address;

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
