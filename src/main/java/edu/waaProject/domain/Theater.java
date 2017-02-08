package edu.waaProject.domain;

import java.util.List;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
public class Theater {
	@Id
	@GeneratedValue
	private int theaterId;

	@OneToMany(mappedBy = "theater", fetch = FetchType.EAGER)
	@JsonIgnoreProperties("theater")
	private List<Tickets> tickets;

	private String tname;

	@Embedded
	private Address address;

	
	private int totalSeats;
	
	

	public int getTotalSeats() {
		return totalSeats;
	}

	public void setTotalSeats(int totalSeats) {
		this.totalSeats = totalSeats;
	}

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
