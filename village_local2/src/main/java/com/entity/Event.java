package com.entity;

public class Event {
	private int id;
	private String eventName;
	private String eventInfo;
	private String eventLocation;
	private String eventDate;
	private String eventLastDate;
	private String eventOptions;
	private String eventTime;
	private String email;
	
	
	public Event() {
		
	}

	public Event(String eventName, String eventInfo, String eventLocation, String eventDate, String eventLastDate,
			String eventOptions, String eventTime, String email) {
		
		this.eventName = eventName;
		this.eventInfo = eventInfo;
		this.eventLocation = eventLocation;
		this.eventDate = eventDate;
		this.eventLastDate = eventLastDate;
		this.eventOptions = eventOptions;
		this.eventTime = eventTime;
		this.email = email;
	}

	public Event(int id, String eventName, String eventInfo, String eventLocation, String eventDate,
			String eventLastDate, String eventOptions, String eventTime) {
		
		this.id = id;
		this.eventName = eventName;
		this.eventInfo = eventInfo;
		this.eventLocation = eventLocation;
		this.eventDate = eventDate;
		this.eventLastDate = eventLastDate;
		this.eventOptions = eventOptions;
		this.eventTime = eventTime;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String eml) {
		this.email= eml;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventInfo() {
		return eventInfo;
	}

	public void setEventInfo(String eventInfo) {
		this.eventInfo = eventInfo;
	}

	public String getEventLocation() {
		return eventLocation;
	}

	public void setEventLocation(String eventLocation) {
		this.eventLocation = eventLocation;
	}

	public String getEventDate() {
		return eventDate;
	}

	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}

	public String getEventLastDate() {
		return eventLastDate;
	}

	public void setEventLastDate(String eventLastDate) {
		this.eventLastDate = eventLastDate;
	}

	public String getEventOptions() {
		return eventOptions;
	}

	public void setEventOptions(String eventOptions) {
		this.eventOptions = eventOptions;
	}

	public String getEventTime() {
		return eventTime;
	}

	public void setEventTime(String eventTime) {
		this.eventTime = eventTime;
	}
	
	
	
}
