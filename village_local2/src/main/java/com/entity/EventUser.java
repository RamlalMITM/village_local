package com.entity;

public class EventUser {

	private int id;
	private String email;
	private String name;
	private String mno;
	private String city;
	
	
	
	public EventUser() {
	}

	public EventUser(int id, String email, String name, String mno, String city) {
		this.id = id;
		this.email = email;
		this.name = name;
		this.mno = mno;
		this.city = city;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMno() {
		return mno;
	}

	public void setMno(String mno) {
		this.mno = mno;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	
}
