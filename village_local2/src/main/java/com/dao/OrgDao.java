package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.Org;

public class OrgDao {
	
private Connection con;
	
	public OrgDao(Connection con) {
		this.con =con;
	}
	
	public void saveOrg(Org org) {
		
		try {
			
			PreparedStatement s = this.con.prepareStatement("insert into org(email,name,mno,nameoforg,pass) values(?,?,?,?,?)");
			s.setString(1, org.getEmail());
			s.setString(2, org.getName());
			s.setString(3, org.getMno());
			s.setString(4, org.getNameoforg());
			s.setString(5, org.getPass());
			
			s.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ResultSet login(String email, String pass) {
		ResultSet r = null;
		PreparedStatement s;
		try {
			s = this.con.prepareStatement("select * from org where email=? and pass=?");
			s.setString(1, email);
			s.setString(2, pass);
			ResultSet rs = s.executeQuery();
			r = rs;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return r;
	}
	
}
