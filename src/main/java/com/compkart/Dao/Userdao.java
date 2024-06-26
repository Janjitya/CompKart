package com.compkart.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.compkart.entities.Products;
import com.compkart.entities.Users;

public class Userdao {
	
	private Connection con;

	public Userdao(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean userRegister(Users user) {
		boolean f = false;
		
		try {
			
			String query ="INSERT INTO users(user_name,user_email,user_password) values(?,?,?)";
			PreparedStatement pst = con.prepareStatement(query);
			
			pst.setString(1, user.getUserName());
			pst.setString(2, user.getUserEmail());
			pst.setString(3, user.getUserPassword());
			
			int i = pst.executeUpdate();
			
			if(i == 1) {
				f= true;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	
	
	public Users userlogin(String email, String password) {
		Users user = null;
		
		try {
			
			String query = "SELECT * FROM users where user_email = ? and user_password = ?";
			
			PreparedStatement pst = con.prepareStatement(query);
			
			pst.setString(1, email);
			pst.setString(2, password);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				user = new Users();
				user.setUserId(rs.getInt("user_id"));
				user.setUserName(rs.getString("user_name"));
				user.setUserEmail(rs.getString("user_email"));
				user.setUserPassword(rs.getString("user_password"));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return user;
	}
	
	public List<Users> getUsers(){
		List<Users> ulist = new ArrayList<Users>();
		Users  user = null;
		
		try {
			String query ="Select * from users";
			PreparedStatement pst = con.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				user = new Users();
				user.setUserId(rs.getInt("user_id"));
				user.setUserName(rs.getString("user_name"));
				user.setUserEmail(rs.getString("user_email"));
				user.setUserPassword(rs.getString("user_password"));
				
				
				ulist.add(user);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return ulist;
	}

}
