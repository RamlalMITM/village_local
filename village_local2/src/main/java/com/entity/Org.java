package com.entity;

public class Org {

	private String email;
	private String name;
	private String mno;
	private String nameoforg;
	private String pass;
	
	public Org() {
		
	}

	public Org(String email, String name, String mno, String nameoforg, String pass) {
		
		this.email = email;
		this.name = name;
		this.mno = mno;
		this.nameoforg = nameoforg;
		this.pass = pass;
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

	public String getNameoforg() {
		return nameoforg;
	}

	public void setNameoforg(String nameoforg) {
		this.nameoforg = nameoforg;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
}
