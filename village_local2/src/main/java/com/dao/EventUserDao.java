package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Event;
import com.entity.EventUser;

public class EventUserDao {

	private Connection con;
	
	public EventUserDao(Connection con) {
		this.con =con;
	}
	
	public void saveEventUser(EventUser eventUser) {
		
		try {
			
			PreparedStatement s = this.con.prepareStatement("insert into eventUser(id,email,name,mno,city) values(?,?,?,?,?)");
			s.setInt(1, eventUser.getId());
			s.setString(2, eventUser.getEmail());
			s.setString(3, eventUser.getName());
			s.setString(4, eventUser.getMno());
			s.setString(5, eventUser.getCity());
			
			s.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public EventUser selectEventUser(int id) {
		EventUser eventUser = new EventUser();
		try {
			
			PreparedStatement s = con.prepareStatement(
					"select * from eventUser where id = ?");
			s.setInt(1, id);
			ResultSet rs = s.executeQuery();
			if(rs.next()) {			
				eventUser.setName(rs.getString(2));
				eventUser.setEmail(rs.getString(3));
				eventUser.setMno(rs.getString(4));
				eventUser.setCity(rs.getString(5));
				con.close();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return eventUser;
	}
	
	public List<EventUser> selectAll(int id) {
		List<EventUser> lst = new ArrayList<EventUser>();
		try {
			
			PreparedStatement s = this.con.prepareStatement(
					"select * from eventUser where id =?");
			s.setInt(1, id);
			ResultSet rs = s.executeQuery();
			
			while(rs.next()) {
				EventUser eventUser = new EventUser();
				
				eventUser.setName(rs.getString(2));
				eventUser.setEmail(rs.getString(3));
				eventUser.setMno(rs.getString(4));
				eventUser.setCity(rs.getString(5));
				
				lst.add(eventUser);	
			}
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lst;
	}
	
}
