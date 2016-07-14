package com.niit.shopcart.dao;

import org.hibernate.SessionFactory;

public interface UserDao {
	
	
	public boolean isValidUser(String id, String password, boolean isAdmin);

}
