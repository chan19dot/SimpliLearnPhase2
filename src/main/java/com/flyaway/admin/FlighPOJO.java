package com.flyaway.admin;

import java.sql.Date;

public class FlighPOJO {
	private String airline;
	private String source;
	private String destination;
	private Date dateOfFlight;
	private int id;
	private double price;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public Date getDateOfFlight() {
		return dateOfFlight;
	}
	public void setDateOfFlight(Date date) {
		this.dateOfFlight = date;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	

}
