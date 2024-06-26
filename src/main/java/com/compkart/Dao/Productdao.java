package com.compkart.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.compkart.entities.Products;

public class Productdao {
	
	private Connection con;

	public Productdao(Connection con) {
		super();
		this.con = con;
	}
	
	
	public boolean addProducts(Products p) {
		boolean b = false;
		
		try {
			String query = "Insert into products(product_name,product_description,product_category,product_price,product_img) values (?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1,p.getP_name());
			pst.setString(2,p.getP_desc());
			pst.setString(3,p.getP_category());
			pst.setDouble(4,p.getP_price());
			pst.setString(5, p.getP_image());
			
			
			int i = pst.executeUpdate();
			
			if(i==1) {
				b=true;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return b;
	}
	
	
	public List<Products> showProducts(){
		List<Products> plist = new ArrayList<Products>();
		Products pr = null;
		
		try {
			String query ="Select * from products";
			PreparedStatement pst = con.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				pr = new Products();
				pr.setP_id(rs.getInt("product_id"));
				pr.setP_name(rs.getString("product_name"));
				pr.setP_desc(rs.getString("product_description"));
				pr.setP_category(rs.getString("product_category"));
				pr.setP_price(rs.getDouble("product_price"));
				pr.setP_image(rs.getString("product_img"));
				
				plist.add(pr);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return plist;
	}
	
	public List<Products> getProductByCategory(String c){
		
		List<Products> pl = new ArrayList<Products>();
		try {
			String sql = "SELECT * FROM products WHERE product_category = ?";
			PreparedStatement pst = con.prepareStatement(sql);
			
			pst.setString(1, c);
			
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				Products p = new Products();
				p.setP_id(rs.getInt("product_id"));
				p.setP_name(rs.getString("product_name"));
				p.setP_desc(rs.getString("product_description"));
				p.setP_category(rs.getString("product_category"));
				p.setP_price(rs.getDouble("product_price"));
				p.setP_image(rs.getString("product_img"));
				
				pl.add(p);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return pl;
	}

}
