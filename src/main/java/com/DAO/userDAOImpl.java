package com.DAO;
import java.sql.*;

import java.sql.PreparedStatement;

import com.entity.user;
public class userDAOImpl {
	
	private Connection con;

	public userDAOImpl(Connection con) {
		super();
		this.con = con;
	}
	
	public  boolean userRegister(user us) {
		boolean f = false;
		try {
			String query ="insert into user(name,email,phone,password) values(?,?,?,?)";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPhone());
			ps.setString(4, us.getPassword());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f = true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public user login(String email, String password) {
		user us = null;
		try {
			String query = "select * from user where email =? and password =?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				us = new user();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhone(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setAddress(rs.getString(6));
				us.setLandmark(rs.getString(7));
				us.setCity(rs.getString(8));
				us.setState(rs.getString(9));
				us.setPincode(rs.getString(10));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	return us;
	}
}
