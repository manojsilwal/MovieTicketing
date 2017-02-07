package edu.waaProject.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Seats {
	@Id
	@GeneratedValue
	private int seatId;
	private String seatName;
	private boolean avialable;

	@ManyToOne
	@JoinColumn(name = "ticketNo")
	private Tickets tickets;

	public Tickets getTickets() {
		return tickets;
	}

	public void setTickets(Tickets tickets) {
		this.tickets = tickets;
	}

	public int getSeatId() {
		return seatId;
	}

	public void setSeatId(int seatId) {
		this.seatId = seatId;
	}

	public String getSeatName() {
		return seatName;
	}

	public void setSeatName(String seatName) {
		this.seatName = seatName;
	}

	public boolean isAvialable() {
		return avialable;
	}

	public void setAvialable(boolean avialable) {
		this.avialable = avialable;
	}
}
