package com.flyaway.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class AdminDAO {
	
	//INSERT
	public int checkDb(AdminPOJO adm) throws ClassNotFoundException, SQLException{
		Connection con = AdminDbConnection.getConn();
		String sql = "SELECT * FROM admindetails WHERE username= ?";
		//String sql = "SELECT * FROM admindetails";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, adm.getadmEmail());
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			String pass = rs.getString("passkey");
			if(adm.getPass().equals(pass)) {
				con.close();
				return 1;
			}
			
		}
		con.close();
		rs.close();
		return 0;
	}
	
	//PasswordReset
	
	public int newPassSet(AdminPOJO adm) throws ClassNotFoundException, SQLException{
		Connection con = AdminDbConnection.getConn();
		String sql = "UPDATE admindetails SET passkey=? WHERE username=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, adm.getPass());
		ps.setString(2, adm.getadmEmail());
		
		int result =ps.executeUpdate();
		if(result !=0) {
			con.close();
			return 1;
		}
		
		con.close();
		
		return 0;
	}
	
	//returns sources and destinations
	public List<FlighPOJO> allPlaces() throws ClassNotFoundException, SQLException {
		Connection con = AdminDbConnection.getConn();
		List<FlighPOJO> l= new ArrayList<FlighPOJO>(); 
		String sql = "SELECT destination,sourcePlace FROM flightdetails";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			FlighPOJO obj = new FlighPOJO();
			obj.setDestination(rs.getString(1));
			obj.setSource(rs.getString(2));
			l.add(obj);
		}
		con.close();
		rs.close();
		return l;
		
		
	}
	
	public List<String> retr_airlines() throws ClassNotFoundException, SQLException{
		Connection con = AdminDbConnection.getConn();
		List<String> airline = new ArrayList<String>();
		String sql = "SELECT DISTINCT airline FROM flightdetails";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			airline.add(rs.getString(1));
		}
		return airline;
	}
	
	public List<FlighPOJO> retrieveAll() throws ClassNotFoundException, SQLException{
		Connection con = AdminDbConnection.getConn();
		List<FlighPOJO> info = new ArrayList<FlighPOJO>();
		String sql = "SELECT * FROM flightdetails";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			FlighPOJO obj = new FlighPOJO();
			obj.setId(rs.getInt(1));
			obj.setAirline(rs.getString(2));
			obj.setSource(rs.getString(3));
			obj.setDestination(rs.getString(4));
			obj.setDateOfFlight(rs.getDate(5));
			obj.setPrice(rs.getDouble(6));
			info.add(obj);
		}
		con.close();
		rs.close();
		return info;
	}
	
	public List<FlighPOJO> fetch(FlighPOJO fp) throws ClassNotFoundException, SQLException{
		Connection con = AdminDbConnection.getConn();
		List<FlighPOJO> pl = new ArrayList<FlighPOJO>();
		String sql = "SELECT * FROM flightdetails WHERE sourcePlace=? AND destination = ? AND dateOfFlight=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, fp.getSource());
		ps.setString(2,fp.getDestination());
		ps.setDate(3, fp.getDateOfFlight());
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			FlighPOJO obj = new FlighPOJO();
			obj.setId(rs.getInt(1));
			obj.setAirline(rs.getString(2));
			obj.setSource(rs.getString(3));
			obj.setDestination(rs.getString(4));
			obj.setDateOfFlight(rs.getDate(5));
			obj.setPrice(rs.getDouble(6));
			pl.add(obj);
		}
		
		return pl;
	}
	
	public FlighPOJO fetch1(String id) throws ClassNotFoundException, SQLException {
		Connection con = AdminDbConnection.getConn();
		FlighPOJO fp = new FlighPOJO();
		String sql = "SELECT * FROM flightdetails WHERE ID=?";
		PreparedStatement ps= con.prepareStatement(sql);
		int Id = Integer.valueOf(id);
		ps.setInt(1, Id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			fp.setId(rs.getInt(1));
			fp.setAirline(rs.getString(2));
			fp.setSource(rs.getString(3));
			fp.setDestination(rs.getString(4));
			fp.setDateOfFlight(rs.getDate(5));
			fp.setPrice(rs.getDouble(6));
			break;
		}
		return fp;
	}
	
	
	
	
	
	

}
