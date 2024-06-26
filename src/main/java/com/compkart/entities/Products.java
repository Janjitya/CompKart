package com.compkart.entities;

public class Products {
	
	private int p_id;
	private String p_name;
	private String p_desc;
	private String p_category;
	private double p_price;
	private String p_image;
	
	
	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Products(String p_name, String p_desc, String p_category, double p_price, String p_image) {
		super();
		this.p_name = p_name;
		this.p_desc = p_desc;
		this.p_category = p_category;
		this.p_price = p_price;
		this.p_image = p_image;
	}


	public Products(int p_id, String p_name, String p_desc, String p_category, double p_price, String p_image) {
		super();
		this.p_id = p_id;
		this.p_name = p_name;
		this.p_desc = p_desc;
		this.p_category = p_category;
		this.p_price = p_price;
		this.p_image = p_image;
	}


	public int getP_id() {
		return p_id;
	}


	public void setP_id(int p_id) {
		this.p_id = p_id;
	}


	public String getP_name() {
		return p_name;
	}


	public void setP_name(String p_name) {
		this.p_name = p_name;
	}


	public String getP_desc() {
		return p_desc;
	}


	public void setP_desc(String p_desc) {
		this.p_desc = p_desc;
	}


	public String getP_category() {
		return p_category;
	}


	public void setP_category(String p_category) {
		this.p_category = p_category;
	}


	public double getP_price() {
		return p_price;
	}


	public void setP_price(double p_price) {
		this.p_price = p_price;
	}


	public String getP_image() {
		return p_image;
	}


	public void setP_image(String p_image) {
		this.p_image = p_image;
	}


	@Override
	public String toString() {
		return "Products [p_id=" + p_id + ", p_name=" + p_name + ", p_desc=" + p_desc + ", p_category=" + p_category
				+ ", p_price=" + p_price + ", p_image=" + p_image + "]";
	}
	
	

}
