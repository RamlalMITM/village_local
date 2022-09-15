package com.dao;

import java.sql.*;
import java.util.*;

import com.database.MyConnection;
import com.entity.Event;

public class EventDao {
	
	private Connection con;
	
	public EventDao(Connection con) {
		this.con =con;
	}
	
	public void saveEvent(Event event) {
		
		try {
			
			PreparedStatement s = this.con.prepareStatement("insert into event(ename,einfo,elocation,edate,lregdate,options,etime) values(?,?,?,?,?,?,?)");
			s.setString(1, event.getEventName());
			s.setString(2, event.getEventInfo());
			s.setString(3, event.getEventLocation());
			s.setString(4, event.getEventDate());
			s.setString(5, event.getEventLastDate());
			s.setString(6, event.getEventOptions());
			s.setString(7, event.getEventTime());
			
			s.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<Event> selectAll() {
		List<Event> lst = new ArrayList<Event>();
		try {
			
			PreparedStatement s = this.con.prepareStatement(
					"select * from event");
			ResultSet rs = s.executeQuery();
			
			while(rs.next()) {
				Event event = new Event();
				event.setId(rs.getInt(1));
				event.setEventName(rs.getString(2));
				event.setEventInfo(rs.getString(3));
				event.setEventLocation(rs.getString(4));
				event.setEventDate(rs.getString(5));
				event.setEventLastDate(rs.getString(6));
				event.setEventOptions(rs.getString(7));
				event.setEventTime(rs.getString(8));
				lst.add(event);	
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lst;
	}
	
	
	public Event select(int id) {
		Event event = new Event();
		try {
			
			PreparedStatement s = this.con.prepareStatement(
					"select * from event where id = ?");
			s.setInt(1, id);
			ResultSet rs = s.executeQuery();
			if(rs.next()) {			
				event.setId(rs.getInt(1));
				event.setEventName(rs.getString(2));
				event.setEventInfo(rs.getString(3));
				event.setEventLocation(rs.getString(4));
				event.setEventDate(rs.getString(5));
				event.setEventLastDate(rs.getString(6));
				event.setEventOptions(rs.getString(7));
				event.setEventTime(rs.getString(8));	
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return event;
	}
	
	
	public void update(Event event) {
		try {
			
			PreparedStatement s = this.con.prepareStatement(
					"update event set ename =?,einfo=?,elocation=?,edate=?,lregdate=?,options=?,etime=?  where id = ?");
			
			s.setString(1, event.getEventName());
			s.setString(2, event.getEventInfo());
			s.setString(3, event.getEventLocation());
			s.setString(4, event.getEventDate());
			s.setString(5, event.getEventLastDate());
			s.setString(6, event.getEventOptions());
			s.setString(7, event.getEventTime());
			s.setInt(8, event.getId());
			
			s.executeUpdate();
				
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public void delete(int id) {
		try {
			PreparedStatement s = this.con.prepareStatement(
					"delete from event where id = ?");
			PreparedStatement t = con.prepareStatement(
					"delete from eventUser where id = ?");
			s.setInt(1, id);
			t.setInt(1, id);
			s.executeUpdate();
			t.executeUpdate();
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public List<Event> selectAll(String eml) {
		List<Event> lst = new ArrayList<Event>();
		try {
			
			PreparedStatement s = this.con.prepareStatement(
					"select * from event where email=?");
			s.setString(1, eml);
			ResultSet rs = s.executeQuery();
			
			while(rs.next()) {
				Event event = new Event();
				event.setId(rs.getInt(1));
				event.setEventName(rs.getString(2));
				event.setEventInfo(rs.getString(3));
				event.setEventLocation(rs.getString(4));
				event.setEventDate(rs.getString(5));
				event.setEventLastDate(rs.getString(6));
				event.setEventOptions(rs.getString(7));
				event.setEventTime(rs.getString(8));
				lst.add(event);	
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lst;
	}
	
public void saveEventM(Event event) {
		
		try {
			
			PreparedStatement s = this.con.prepareStatement("insert into event(ename,einfo,elocation,edate,lregdate,options,etime,email) values(?,?,?,?,?,?,?,?)");
			s.setString(1, event.getEventName());
			s.setString(2, event.getEventInfo());
			s.setString(3, event.getEventLocation());
			s.setString(4, event.getEventDate());
			s.setString(5, event.getEventLastDate());
			s.setString(6, event.getEventOptions());
			s.setString(7, event.getEventTime());
			s.setString(8,event.getEmail());
			s.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


public List<Event> selectAllC(String city) {
	List<Event> lst = new ArrayList<Event>();
	try {
		
		PreparedStatement s = this.con.prepareStatement(
				"select * from event where elocation =?");
		s.setString(1, city);
		ResultSet rs = s.executeQuery();
		
		while(rs.next()) {
			Event event = new Event();
			event.setId(rs.getInt(1));
			event.setEventName(rs.getString(2));
			event.setEventInfo(rs.getString(3));
			event.setEventLocation(rs.getString(4));
			event.setEventDate(rs.getString(5));
			event.setEventLastDate(rs.getString(6));
			event.setEventOptions(rs.getString(7));
			event.setEventTime(rs.getString(8));
			lst.add(event);	
		}
		
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return lst;
}

}
